; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_turris-mox-rwtm.c_mox_get_board_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_turris-mox-rwtm.c_mox_get_board_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mox_rwtm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.armada_37xx_rwtm_rx_msg }
%struct.armada_37xx_rwtm_rx_msg = type { i32*, i32 }
%struct.armada_37xx_rwtm_tx_msg = type { i8* }

@MBOX_CMD_BOARD_INFO = common dso_local global i8* null, align 8
@HZ = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Board does not have manufacturing information burned!\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Turris Mox serial number %016llX\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"           board version %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"           burned RAM size %i MiB\0A\00", align 1
@MBOX_CMD_ECDSA_PUB_KEY = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"Board has no public key burned!\0A\00", align 1
@.str.5 = private unnamed_addr constant [69 x i8] c"%06x%08x%08x%08x%08x%08x%08x%08x%08x%08x%08x%08x%08x%08x%08x%08x%08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mox_rwtm*)* @mox_get_board_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mox_get_board_info(%struct.mox_rwtm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mox_rwtm*, align 8
  %4 = alloca %struct.armada_37xx_rwtm_tx_msg, align 8
  %5 = alloca %struct.armada_37xx_rwtm_rx_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.mox_rwtm* %0, %struct.mox_rwtm** %3, align 8
  %8 = load %struct.mox_rwtm*, %struct.mox_rwtm** %3, align 8
  %9 = getelementptr inbounds %struct.mox_rwtm, %struct.mox_rwtm* %8, i32 0, i32 11
  store %struct.armada_37xx_rwtm_rx_msg* %9, %struct.armada_37xx_rwtm_rx_msg** %5, align 8
  %10 = load i8*, i8** @MBOX_CMD_BOARD_INFO, align 8
  %11 = getelementptr inbounds %struct.armada_37xx_rwtm_tx_msg, %struct.armada_37xx_rwtm_tx_msg* %4, i32 0, i32 0
  store i8* %10, i8** %11, align 8
  %12 = load %struct.mox_rwtm*, %struct.mox_rwtm** %3, align 8
  %13 = getelementptr inbounds %struct.mox_rwtm, %struct.mox_rwtm* %12, i32 0, i32 8
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @mbox_send_message(i32 %14, %struct.armada_37xx_rwtm_tx_msg* %4)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %240

20:                                               ; preds = %1
  %21 = load %struct.mox_rwtm*, %struct.mox_rwtm** %3, align 8
  %22 = getelementptr inbounds %struct.mox_rwtm, %struct.mox_rwtm* %21, i32 0, i32 7
  %23 = load i32, i32* @HZ, align 4
  %24 = sdiv i32 %23, 2
  %25 = call i32 @wait_for_completion_timeout(i32* %22, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %240

30:                                               ; preds = %20
  %31 = load i8*, i8** @MBOX_CMD_BOARD_INFO, align 8
  %32 = load %struct.armada_37xx_rwtm_rx_msg*, %struct.armada_37xx_rwtm_rx_msg** %5, align 8
  %33 = getelementptr inbounds %struct.armada_37xx_rwtm_rx_msg, %struct.armada_37xx_rwtm_rx_msg* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @mox_get_status(i8* %31, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %30
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @ENODATA, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp ne i32 %39, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %240

45:                                               ; preds = %38, %30
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @ENODATA, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.mox_rwtm*, %struct.mox_rwtm** %3, align 8
  %52 = getelementptr inbounds %struct.mox_rwtm, %struct.mox_rwtm* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dev_warn(i32 %53, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %132

55:                                               ; preds = %45
  %56 = load %struct.armada_37xx_rwtm_rx_msg*, %struct.armada_37xx_rwtm_rx_msg** %5, align 8
  %57 = getelementptr inbounds %struct.armada_37xx_rwtm_rx_msg, %struct.armada_37xx_rwtm_rx_msg* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.mox_rwtm*, %struct.mox_rwtm** %3, align 8
  %62 = getelementptr inbounds %struct.mox_rwtm, %struct.mox_rwtm* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.mox_rwtm*, %struct.mox_rwtm** %3, align 8
  %64 = getelementptr inbounds %struct.mox_rwtm, %struct.mox_rwtm* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = shl i32 %65, 32
  store i32 %66, i32* %64, align 8
  %67 = load %struct.armada_37xx_rwtm_rx_msg*, %struct.armada_37xx_rwtm_rx_msg** %5, align 8
  %68 = getelementptr inbounds %struct.armada_37xx_rwtm_rx_msg, %struct.armada_37xx_rwtm_rx_msg* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.mox_rwtm*, %struct.mox_rwtm** %3, align 8
  %73 = getelementptr inbounds %struct.mox_rwtm, %struct.mox_rwtm* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load %struct.armada_37xx_rwtm_rx_msg*, %struct.armada_37xx_rwtm_rx_msg** %5, align 8
  %77 = getelementptr inbounds %struct.armada_37xx_rwtm_rx_msg, %struct.armada_37xx_rwtm_rx_msg* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.mox_rwtm*, %struct.mox_rwtm** %3, align 8
  %82 = getelementptr inbounds %struct.mox_rwtm, %struct.mox_rwtm* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.armada_37xx_rwtm_rx_msg*, %struct.armada_37xx_rwtm_rx_msg** %5, align 8
  %84 = getelementptr inbounds %struct.armada_37xx_rwtm_rx_msg, %struct.armada_37xx_rwtm_rx_msg* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.mox_rwtm*, %struct.mox_rwtm** %3, align 8
  %89 = getelementptr inbounds %struct.mox_rwtm, %struct.mox_rwtm* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load %struct.mox_rwtm*, %struct.mox_rwtm** %3, align 8
  %91 = getelementptr inbounds %struct.mox_rwtm, %struct.mox_rwtm* %90, i32 0, i32 10
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.armada_37xx_rwtm_rx_msg*, %struct.armada_37xx_rwtm_rx_msg** %5, align 8
  %94 = getelementptr inbounds %struct.armada_37xx_rwtm_rx_msg, %struct.armada_37xx_rwtm_rx_msg* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 4
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.armada_37xx_rwtm_rx_msg*, %struct.armada_37xx_rwtm_rx_msg** %5, align 8
  %99 = getelementptr inbounds %struct.armada_37xx_rwtm_rx_msg, %struct.armada_37xx_rwtm_rx_msg* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 5
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @reply_to_mac_addr(i32 %92, i32 %97, i32 %102)
  %104 = load %struct.mox_rwtm*, %struct.mox_rwtm** %3, align 8
  %105 = getelementptr inbounds %struct.mox_rwtm, %struct.mox_rwtm* %104, i32 0, i32 9
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.armada_37xx_rwtm_rx_msg*, %struct.armada_37xx_rwtm_rx_msg** %5, align 8
  %108 = getelementptr inbounds %struct.armada_37xx_rwtm_rx_msg, %struct.armada_37xx_rwtm_rx_msg* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 6
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.armada_37xx_rwtm_rx_msg*, %struct.armada_37xx_rwtm_rx_msg** %5, align 8
  %113 = getelementptr inbounds %struct.armada_37xx_rwtm_rx_msg, %struct.armada_37xx_rwtm_rx_msg* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 7
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @reply_to_mac_addr(i32 %106, i32 %111, i32 %116)
  %118 = load %struct.mox_rwtm*, %struct.mox_rwtm** %3, align 8
  %119 = getelementptr inbounds %struct.mox_rwtm, %struct.mox_rwtm* %118, i32 0, i32 3
  store i32 1, i32* %119, align 4
  %120 = load %struct.mox_rwtm*, %struct.mox_rwtm** %3, align 8
  %121 = getelementptr inbounds %struct.mox_rwtm, %struct.mox_rwtm* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %122)
  %124 = load %struct.mox_rwtm*, %struct.mox_rwtm** %3, align 8
  %125 = getelementptr inbounds %struct.mox_rwtm, %struct.mox_rwtm* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %126)
  %128 = load %struct.mox_rwtm*, %struct.mox_rwtm** %3, align 8
  %129 = getelementptr inbounds %struct.mox_rwtm, %struct.mox_rwtm* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %55, %50
  br label %133

133:                                              ; preds = %132
  %134 = load i8*, i8** @MBOX_CMD_ECDSA_PUB_KEY, align 8
  %135 = getelementptr inbounds %struct.armada_37xx_rwtm_tx_msg, %struct.armada_37xx_rwtm_tx_msg* %4, i32 0, i32 0
  store i8* %134, i8** %135, align 8
  %136 = load %struct.mox_rwtm*, %struct.mox_rwtm** %3, align 8
  %137 = getelementptr inbounds %struct.mox_rwtm, %struct.mox_rwtm* %136, i32 0, i32 8
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @mbox_send_message(i32 %138, %struct.armada_37xx_rwtm_tx_msg* %4)
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* %6, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %133
  %143 = load i32, i32* %6, align 4
  store i32 %143, i32* %2, align 4
  br label %240

144:                                              ; preds = %133
  %145 = load %struct.mox_rwtm*, %struct.mox_rwtm** %3, align 8
  %146 = getelementptr inbounds %struct.mox_rwtm, %struct.mox_rwtm* %145, i32 0, i32 7
  %147 = load i32, i32* @HZ, align 4
  %148 = sdiv i32 %147, 2
  %149 = call i32 @wait_for_completion_timeout(i32* %146, i32 %148)
  store i32 %149, i32* %6, align 4
  %150 = load i32, i32* %6, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %144
  %153 = load i32, i32* %6, align 4
  store i32 %153, i32* %2, align 4
  br label %240

154:                                              ; preds = %144
  %155 = load i8*, i8** @MBOX_CMD_ECDSA_PUB_KEY, align 8
  %156 = load %struct.armada_37xx_rwtm_rx_msg*, %struct.armada_37xx_rwtm_rx_msg** %5, align 8
  %157 = getelementptr inbounds %struct.armada_37xx_rwtm_rx_msg, %struct.armada_37xx_rwtm_rx_msg* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @mox_get_status(i8* %155, i32 %158)
  store i32 %159, i32* %6, align 4
  %160 = load i32, i32* %6, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %154
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* @ENODATA, align 4
  %165 = sub nsw i32 0, %164
  %166 = icmp ne i32 %163, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %162
  %168 = load i32, i32* %6, align 4
  store i32 %168, i32* %2, align 4
  br label %240

169:                                              ; preds = %162, %154
  %170 = load i32, i32* %6, align 4
  %171 = load i32, i32* @ENODATA, align 4
  %172 = sub nsw i32 0, %171
  %173 = icmp eq i32 %170, %172
  br i1 %173, label %174, label %179

174:                                              ; preds = %169
  %175 = load %struct.mox_rwtm*, %struct.mox_rwtm** %3, align 8
  %176 = getelementptr inbounds %struct.mox_rwtm, %struct.mox_rwtm* %175, i32 0, i32 6
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @dev_warn(i32 %177, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %238

179:                                              ; preds = %169
  %180 = load %struct.armada_37xx_rwtm_rx_msg*, %struct.armada_37xx_rwtm_rx_msg** %5, align 8
  %181 = getelementptr inbounds %struct.armada_37xx_rwtm_rx_msg, %struct.armada_37xx_rwtm_rx_msg* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  store i32* %182, i32** %7, align 8
  %183 = load %struct.mox_rwtm*, %struct.mox_rwtm** %3, align 8
  %184 = getelementptr inbounds %struct.mox_rwtm, %struct.mox_rwtm* %183, i32 0, i32 4
  store i32 1, i32* %184, align 8
  %185 = load %struct.mox_rwtm*, %struct.mox_rwtm** %3, align 8
  %186 = getelementptr inbounds %struct.mox_rwtm, %struct.mox_rwtm* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %6, align 4
  %189 = load i32*, i32** %7, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32*, i32** %7, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 1
  %194 = load i32, i32* %193, align 4
  %195 = load i32*, i32** %7, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 2
  %197 = load i32, i32* %196, align 4
  %198 = load i32*, i32** %7, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 3
  %200 = load i32, i32* %199, align 4
  %201 = load i32*, i32** %7, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 4
  %203 = load i32, i32* %202, align 4
  %204 = load i32*, i32** %7, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 5
  %206 = load i32, i32* %205, align 4
  %207 = load i32*, i32** %7, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 6
  %209 = load i32, i32* %208, align 4
  %210 = load i32*, i32** %7, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 7
  %212 = load i32, i32* %211, align 4
  %213 = load i32*, i32** %7, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 8
  %215 = load i32, i32* %214, align 4
  %216 = load i32*, i32** %7, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 9
  %218 = load i32, i32* %217, align 4
  %219 = load i32*, i32** %7, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 10
  %221 = load i32, i32* %220, align 4
  %222 = load i32*, i32** %7, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 11
  %224 = load i32, i32* %223, align 4
  %225 = load i32*, i32** %7, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 12
  %227 = load i32, i32* %226, align 4
  %228 = load i32*, i32** %7, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 13
  %230 = load i32, i32* %229, align 4
  %231 = load i32*, i32** %7, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 14
  %233 = load i32, i32* %232, align 4
  %234 = load i32*, i32** %7, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 15
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @sprintf(i32 %187, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0), i32 %188, i32 %191, i32 %194, i32 %197, i32 %200, i32 %203, i32 %206, i32 %209, i32 %212, i32 %215, i32 %218, i32 %221, i32 %224, i32 %227, i32 %230, i32 %233, i32 %236)
  br label %238

238:                                              ; preds = %179, %174
  br label %239

239:                                              ; preds = %238
  store i32 0, i32* %2, align 4
  br label %240

240:                                              ; preds = %239, %167, %152, %142, %43, %28, %18
  %241 = load i32, i32* %2, align 4
  ret i32 %241
}

declare dso_local i32 @mbox_send_message(i32, %struct.armada_37xx_rwtm_tx_msg*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @mox_get_status(i8*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @reply_to_mac_addr(i32, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
