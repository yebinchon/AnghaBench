; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_applespi.c_applespi_got_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_applespi.c_applespi_got_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.applespi_data = type { i32, i32, i32, %struct.TYPE_2__*, i64, i32*, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.spi_packet = type { i64, i64, i32, i32, i32, i32 }
%struct.message = type { i32, %struct.touchpad_protocol, i32 }
%struct.touchpad_protocol = type { i32 }

@APPLESPI_PACKET_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Received corrupted packet (invalid packet length %u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Received unexpected offset (got %u, expected %u)\0A\00", align 1
@MAX_PKTS_PER_MSG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Received message too large (size %u)\0A\00", align 1
@MSG_HEADER_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [69 x i8] c"Received corrupted packet (invalid message length %u - expected %u)\0A\00", align 1
@PACKET_TYPE_READ = common dso_local global i64 0, align 8
@PACKET_DEV_KEYB = common dso_local global i64 0, align 8
@PACKET_DEV_TPAD = common dso_local global i64 0, align 8
@fingers = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [84 x i8] c"Received corrupted packet (invalid message length %u - num-fingers %u, tp-len %zu)\0A\00", align 1
@MAX_FINGERS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"Number of reported fingers (%u) exceeds max (%u))\0A\00", align 1
@PACKET_TYPE_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.applespi_data*)* @applespi_got_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @applespi_got_data(%struct.applespi_data* %0) #0 {
  %2 = alloca %struct.applespi_data*, align 8
  %3 = alloca %struct.spi_packet*, align 8
  %4 = alloca %struct.message*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.touchpad_protocol*, align 8
  %11 = alloca i64, align 8
  store %struct.applespi_data* %0, %struct.applespi_data** %2, align 8
  %12 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %13 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %14 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %13, i32 0, i32 5
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* @APPLESPI_PACKET_SIZE, align 4
  %17 = call i32 @applespi_verify_crc(%struct.applespi_data* %12, i32* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %41, label %19

19:                                               ; preds = %1
  %20 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %21 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %20, i32 0, i32 6
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %25 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %24, i32 0, i32 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %19
  %29 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %30 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  %31 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %32 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %31, i32 0, i32 1
  store i32 0, i32* %32, align 4
  %33 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %34 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %33, i32 0, i32 7
  %35 = call i32 @wake_up_all(i32* %34)
  br label %36

36:                                               ; preds = %28, %19
  %37 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %38 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %37, i32 0, i32 6
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  br label %299

41:                                               ; preds = %1
  %42 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %43 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %42, i32 0, i32 5
  %44 = load i32*, i32** %43, align 8
  %45 = bitcast i32* %44 to %struct.spi_packet*
  store %struct.spi_packet* %45, %struct.spi_packet** %3, align 8
  %46 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %47 = load %struct.spi_packet*, %struct.spi_packet** %3, align 8
  %48 = call i32 @applespi_debug_print_read_packet(%struct.applespi_data* %46, %struct.spi_packet* %47)
  %49 = load %struct.spi_packet*, %struct.spi_packet** %3, align 8
  %50 = getelementptr inbounds %struct.spi_packet, %struct.spi_packet* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le16_to_cpu(i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load %struct.spi_packet*, %struct.spi_packet** %3, align 8
  %54 = getelementptr inbounds %struct.spi_packet, %struct.spi_packet* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @le16_to_cpu(i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load %struct.spi_packet*, %struct.spi_packet** %3, align 8
  %58 = getelementptr inbounds %struct.spi_packet, %struct.spi_packet* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @le16_to_cpu(i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = zext i32 %61 to i64
  %63 = icmp ugt i64 %62, 4
  br i1 %63, label %64, label %71

64:                                               ; preds = %41
  %65 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %66 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %65, i32 0, i32 3
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %8, align 4
  %70 = call i32 (i32*, i8*, i32, ...) @dev_warn_ratelimited(i32* %68, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %69)
  br label %288

71:                                               ; preds = %41
  %72 = load i32, i32* %7, align 4
  %73 = icmp ugt i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %6, align 4
  %76 = icmp ugt i32 %75, 0
  br i1 %76, label %77, label %154

77:                                               ; preds = %74, %71
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %80 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %78, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %77
  %84 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %85 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %84, i32 0, i32 3
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %90 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (i32*, i8*, i32, ...) @dev_warn_ratelimited(i32* %87, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %88, i32 %91)
  br label %288

93:                                               ; preds = %77
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %7, align 4
  %96 = add i32 %94, %95
  %97 = load i32, i32* @MAX_PKTS_PER_MSG, align 4
  %98 = load i32, i32* @APPLESPI_PACKET_SIZE, align 4
  %99 = mul i32 %97, %98
  %100 = icmp ugt i32 %96, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %93
  %102 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %103 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %102, i32 0, i32 3
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %7, align 4
  %108 = add i32 %106, %107
  %109 = call i32 (i32*, i8*, i32, ...) @dev_warn_ratelimited(i32* %105, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  br label %288

110:                                              ; preds = %93
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %8, align 4
  %113 = add i32 %111, %112
  %114 = load i32, i32* @MAX_PKTS_PER_MSG, align 4
  %115 = load i32, i32* @APPLESPI_PACKET_SIZE, align 4
  %116 = mul i32 %114, %115
  %117 = icmp ugt i32 %113, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %110
  %119 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %120 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %119, i32 0, i32 3
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* %8, align 4
  %125 = add i32 %123, %124
  %126 = call i32 (i32*, i8*, i32, ...) @dev_warn_ratelimited(i32* %122, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %125)
  br label %288

127:                                              ; preds = %110
  %128 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %129 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = load i32, i32* %6, align 4
  %132 = zext i32 %131 to i64
  %133 = add nsw i64 %130, %132
  %134 = load %struct.spi_packet*, %struct.spi_packet** %3, align 8
  %135 = getelementptr inbounds %struct.spi_packet, %struct.spi_packet* %134, i32 0, i32 2
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @memcpy(i64 %133, i32* %135, i32 %136)
  %138 = load i32, i32* %8, align 4
  %139 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %140 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = add i32 %141, %138
  store i32 %142, i32* %140, align 8
  %143 = load i32, i32* %7, align 4
  %144 = icmp ugt i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %127
  br label %299

146:                                              ; preds = %127
  %147 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %148 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %147, i32 0, i32 4
  %149 = load i64, i64* %148, align 8
  %150 = inttoptr i64 %149 to %struct.message*
  store %struct.message* %150, %struct.message** %4, align 8
  %151 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %152 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  store i32 %153, i32* %5, align 4
  br label %159

154:                                              ; preds = %74
  %155 = load %struct.spi_packet*, %struct.spi_packet** %3, align 8
  %156 = getelementptr inbounds %struct.spi_packet, %struct.spi_packet* %155, i32 0, i32 2
  %157 = bitcast i32* %156 to %struct.message*
  store %struct.message* %157, %struct.message** %4, align 8
  %158 = load i32, i32* %8, align 4
  store i32 %158, i32* %5, align 4
  br label %159

159:                                              ; preds = %154, %146
  %160 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %161 = load %struct.message*, %struct.message** %4, align 8
  %162 = bitcast %struct.message* %161 to i32*
  %163 = load i32, i32* %5, align 4
  %164 = call i32 @applespi_verify_crc(%struct.applespi_data* %160, i32* %162, i32 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %159
  br label %288

167:                                              ; preds = %159
  %168 = load %struct.message*, %struct.message** %4, align 8
  %169 = getelementptr inbounds %struct.message, %struct.message* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @le16_to_cpu(i32 %170)
  %172 = load i32, i32* %5, align 4
  %173 = load i32, i32* @MSG_HEADER_SIZE, align 4
  %174 = sub i32 %172, %173
  %175 = sub i32 %174, 2
  %176 = icmp ne i32 %171, %175
  br i1 %176, label %177, label %191

177:                                              ; preds = %167
  %178 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %179 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %178, i32 0, i32 3
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 0
  %182 = load %struct.message*, %struct.message** %4, align 8
  %183 = getelementptr inbounds %struct.message, %struct.message* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @le16_to_cpu(i32 %184)
  %186 = load i32, i32* %5, align 4
  %187 = load i32, i32* @MSG_HEADER_SIZE, align 4
  %188 = sub i32 %186, %187
  %189 = sub i32 %188, 2
  %190 = call i32 (i32*, i8*, i32, ...) @dev_warn_ratelimited(i32* %181, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0), i32 %185, i32 %189)
  br label %288

191:                                              ; preds = %167
  %192 = load %struct.spi_packet*, %struct.spi_packet** %3, align 8
  %193 = getelementptr inbounds %struct.spi_packet, %struct.spi_packet* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @PACKET_TYPE_READ, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %208

197:                                              ; preds = %191
  %198 = load %struct.spi_packet*, %struct.spi_packet** %3, align 8
  %199 = getelementptr inbounds %struct.spi_packet, %struct.spi_packet* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @PACKET_DEV_KEYB, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %208

203:                                              ; preds = %197
  %204 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %205 = load %struct.message*, %struct.message** %4, align 8
  %206 = getelementptr inbounds %struct.message, %struct.message* %205, i32 0, i32 2
  %207 = call i32 @applespi_handle_keyboard_event(%struct.applespi_data* %204, i32* %206)
  br label %287

208:                                              ; preds = %197, %191
  %209 = load %struct.spi_packet*, %struct.spi_packet** %3, align 8
  %210 = getelementptr inbounds %struct.spi_packet, %struct.spi_packet* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @PACKET_TYPE_READ, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %274

214:                                              ; preds = %208
  %215 = load %struct.spi_packet*, %struct.spi_packet** %3, align 8
  %216 = getelementptr inbounds %struct.spi_packet, %struct.spi_packet* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @PACKET_DEV_TPAD, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %274

220:                                              ; preds = %214
  %221 = load %struct.message*, %struct.message** %4, align 8
  %222 = getelementptr inbounds %struct.message, %struct.message* %221, i32 0, i32 1
  store %struct.touchpad_protocol* %222, %struct.touchpad_protocol** %10, align 8
  %223 = load %struct.touchpad_protocol*, %struct.touchpad_protocol** %10, align 8
  %224 = load i32, i32* @fingers, align 4
  %225 = load %struct.touchpad_protocol*, %struct.touchpad_protocol** %10, align 8
  %226 = getelementptr inbounds %struct.touchpad_protocol, %struct.touchpad_protocol* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = call i64 @struct_size(%struct.touchpad_protocol* %223, i32 %224, i32 %227)
  store i64 %228, i64* %11, align 8
  %229 = load %struct.message*, %struct.message** %4, align 8
  %230 = getelementptr inbounds %struct.message, %struct.message* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @le16_to_cpu(i32 %231)
  %233 = add nsw i32 %232, 2
  %234 = sext i32 %233 to i64
  %235 = load i64, i64* %11, align 8
  %236 = icmp ne i64 %234, %235
  br i1 %236, label %237, label %251

237:                                              ; preds = %220
  %238 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %239 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %238, i32 0, i32 3
  %240 = load %struct.TYPE_2__*, %struct.TYPE_2__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 0
  %242 = load %struct.message*, %struct.message** %4, align 8
  %243 = getelementptr inbounds %struct.message, %struct.message* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @le16_to_cpu(i32 %244)
  %246 = load %struct.touchpad_protocol*, %struct.touchpad_protocol** %10, align 8
  %247 = getelementptr inbounds %struct.touchpad_protocol, %struct.touchpad_protocol* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load i64, i64* %11, align 8
  %250 = call i32 (i32*, i8*, i32, ...) @dev_warn_ratelimited(i32* %241, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i32 %245, i32 %248, i64 %249)
  br label %288

251:                                              ; preds = %220
  %252 = load %struct.touchpad_protocol*, %struct.touchpad_protocol** %10, align 8
  %253 = getelementptr inbounds %struct.touchpad_protocol, %struct.touchpad_protocol* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @MAX_FINGERS, align 4
  %256 = icmp ugt i32 %254, %255
  br i1 %256, label %257, label %270

257:                                              ; preds = %251
  %258 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %259 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %258, i32 0, i32 3
  %260 = load %struct.TYPE_2__*, %struct.TYPE_2__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %260, i32 0, i32 0
  %262 = load %struct.touchpad_protocol*, %struct.touchpad_protocol** %10, align 8
  %263 = getelementptr inbounds %struct.touchpad_protocol, %struct.touchpad_protocol* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* @MAX_FINGERS, align 4
  %266 = call i32 (i32*, i8*, i32, ...) @dev_warn_ratelimited(i32* %261, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32 %264, i32 %265)
  %267 = load i32, i32* @MAX_FINGERS, align 4
  %268 = load %struct.touchpad_protocol*, %struct.touchpad_protocol** %10, align 8
  %269 = getelementptr inbounds %struct.touchpad_protocol, %struct.touchpad_protocol* %268, i32 0, i32 0
  store i32 %267, i32* %269, align 4
  br label %270

270:                                              ; preds = %257, %251
  %271 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %272 = load %struct.touchpad_protocol*, %struct.touchpad_protocol** %10, align 8
  %273 = call i32 @report_tp_state(%struct.applespi_data* %271, %struct.touchpad_protocol* %272)
  br label %286

274:                                              ; preds = %214, %208
  %275 = load %struct.spi_packet*, %struct.spi_packet** %3, align 8
  %276 = getelementptr inbounds %struct.spi_packet, %struct.spi_packet* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* @PACKET_TYPE_WRITE, align 8
  %279 = icmp eq i64 %277, %278
  br i1 %279, label %280, label %285

280:                                              ; preds = %274
  %281 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %282 = load %struct.spi_packet*, %struct.spi_packet** %3, align 8
  %283 = load %struct.message*, %struct.message** %4, align 8
  %284 = call i32 @applespi_handle_cmd_response(%struct.applespi_data* %281, %struct.spi_packet* %282, %struct.message* %283)
  br label %285

285:                                              ; preds = %280, %274
  br label %286

286:                                              ; preds = %285, %270
  br label %287

287:                                              ; preds = %286, %203
  br label %288

288:                                              ; preds = %287, %237, %177, %166, %118, %101, %83, %64
  %289 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %290 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %289, i32 0, i32 2
  store i32 0, i32* %290, align 8
  %291 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %292 = load %struct.spi_packet*, %struct.spi_packet** %3, align 8
  %293 = getelementptr inbounds %struct.spi_packet, %struct.spi_packet* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* @PACKET_TYPE_WRITE, align 8
  %296 = icmp eq i64 %294, %295
  %297 = zext i1 %296 to i32
  %298 = call i32 @applespi_msg_complete(%struct.applespi_data* %291, i32 %297, i32 1)
  br label %299

299:                                              ; preds = %288, %145, %36
  ret void
}

declare dso_local i32 @applespi_verify_crc(%struct.applespi_data*, i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @applespi_debug_print_read_packet(%struct.applespi_data*, %struct.spi_packet*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_warn_ratelimited(i32*, i8*, i32, ...) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @applespi_handle_keyboard_event(%struct.applespi_data*, i32*) #1

declare dso_local i64 @struct_size(%struct.touchpad_protocol*, i32, i32) #1

declare dso_local i32 @report_tp_state(%struct.applespi_data*, %struct.touchpad_protocol*) #1

declare dso_local i32 @applespi_handle_cmd_response(%struct.applespi_data*, %struct.spi_packet*, %struct.message*) #1

declare dso_local i32 @applespi_msg_complete(%struct.applespi_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
