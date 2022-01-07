; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_init.c_hfi1_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_init.c_hfi1_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32, i32, i64, %struct.hfi1_pportdata*, %struct.TYPE_4__*, i8*, i64, i32, i32, %struct.TYPE_3__*, i32, i32, i32, i32, i32 }
%struct.hfi1_pportdata = type { i32*, i32, i32, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.hfi1_ctxtdata = type { i32* }

@hfi1_verbs_send_pio = common dso_local global i32 0, align 4
@hfi1_verbs_send_dma = common dso_local global i32 0, align 4
@pio_copy = common dso_local global i32 0, align 4
@hfi1_vnic_send_dma = common dso_local global i32 0, align 4
@DROP_PACKET_ON = common dso_local global i32 0, align 4
@DROP_PACKET_OFF = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"cannot allocate dummy tail memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@handle_receive_interrupt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"failed to allocate kernel ctxt's rcvhdrq and/or egr bufs\0A\00", align 1
@HFI1_MAX_SHARED_CTXTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to allocate user events page\0A\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to allocate dev status page\0A\00", align 1
@HFI1_STATUS_CHIP_PRESENT = common dso_local global i32 0, align 4
@HFI1_STATUS_INITTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Failed to bring up port %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi1_init(%struct.hfi1_devdata* %0, i32 %1) #0 {
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.hfi1_ctxtdata*, align 8
  %11 = alloca %struct.hfi1_pportdata*, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* @hfi1_verbs_send_pio, align 4
  %13 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %14 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %13, i32 0, i32 14
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @hfi1_verbs_send_dma, align 4
  %16 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %17 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %16, i32 0, i32 13
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @pio_copy, align 4
  %19 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %20 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %19, i32 0, i32 12
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @hfi1_vnic_send_dma, align 4
  %22 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %23 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %22, i32 0, i32 11
  store i32 %21, i32* %23, align 4
  %24 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %25 = call i64 @is_ax(%struct.hfi1_devdata* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %2
  %28 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %29 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %28, i32 0, i32 10
  %30 = load i32, i32* @DROP_PACKET_ON, align 4
  %31 = call i32 @atomic_set(i32* %29, i32 %30)
  %32 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %33 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  br label %41

34:                                               ; preds = %2
  %35 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %36 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %35, i32 0, i32 10
  %37 = load i32, i32* @DROP_PACKET_OFF, align 4
  %38 = call i32 @atomic_set(i32* %36, i32 %37)
  %39 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %40 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  br label %41

41:                                               ; preds = %34, %27
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %57, %41
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %45 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %42
  %49 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %50 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %49, i32 0, i32 3
  %51 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %51, i64 %53
  store %struct.hfi1_pportdata* %54, %struct.hfi1_pportdata** %11, align 8
  %55 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %11, align 8
  %56 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %48
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %42

60:                                               ; preds = %42
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %65 = call i32 @init_after_reset(%struct.hfi1_devdata* %64)
  store i32 %65, i32* %5, align 4
  br label %69

66:                                               ; preds = %60
  %67 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %68 = call i32 @loadtime_init(%struct.hfi1_devdata* %67)
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %212

73:                                               ; preds = %69
  %74 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %75 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %74, i32 0, i32 9
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %79 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %78, i32 0, i32 8
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call i32 @dma_alloc_coherent(i32* %77, i32 4, i32* %79, i32 %80)
  %82 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %83 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %82, i32 0, i32 7
  store i32 %81, i32* %83, align 8
  %84 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %85 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %73
  %89 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %90 = call i32 @dd_dev_err(%struct.hfi1_devdata* %89, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %5, align 4
  br label %212

93:                                               ; preds = %73
  store i64 0, i64* %9, align 8
  br label %94

94:                                               ; preds = %142, %93
  %95 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %96 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %95, i32 0, i32 6
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load i64, i64* %9, align 8
  %101 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %102 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp slt i64 %100, %103
  br label %105

105:                                              ; preds = %99, %94
  %106 = phi i1 [ false, %94 ], [ %104, %99 ]
  br i1 %106, label %107, label %145

107:                                              ; preds = %105
  %108 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %109 = load i64, i64* %9, align 8
  %110 = call %struct.hfi1_ctxtdata* @hfi1_rcd_get_by_index(%struct.hfi1_devdata* %108, i64 %109)
  store %struct.hfi1_ctxtdata* %110, %struct.hfi1_ctxtdata** %10, align 8
  %111 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %10, align 8
  %112 = icmp ne %struct.hfi1_ctxtdata* %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %107
  br label %142

114:                                              ; preds = %107
  %115 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %10, align 8
  %116 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %115, i32 0, i32 0
  store i32* @handle_receive_interrupt, i32** %116, align 8
  %117 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %118 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %10, align 8
  %119 = call i32 @hfi1_create_rcvhdrq(%struct.hfi1_devdata* %117, %struct.hfi1_ctxtdata* %118)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %114
  %123 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %10, align 8
  %124 = call i32 @hfi1_setup_eagerbufs(%struct.hfi1_ctxtdata* %123)
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %122, %114
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %125
  %129 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %10, align 8
  %130 = load i32, i32* %4, align 4
  %131 = call i32 @hfi1_kern_exp_rcv_init(%struct.hfi1_ctxtdata* %129, i32 %130)
  store i32 %131, i32* %7, align 4
  br label %132

132:                                              ; preds = %128, %125
  %133 = load i32, i32* %7, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %137 = call i32 @dd_dev_err(%struct.hfi1_devdata* %136, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %138 = load i32, i32* %7, align 4
  store i32 %138, i32* %5, align 4
  br label %139

139:                                              ; preds = %135, %132
  %140 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %10, align 8
  %141 = call i32 @hfi1_rcd_put(%struct.hfi1_ctxtdata* %140)
  br label %142

142:                                              ; preds = %139, %113
  %143 = load i64, i64* %9, align 8
  %144 = add nsw i64 %143, 1
  store i64 %144, i64* %9, align 8
  br label %94

145:                                              ; preds = %105
  %146 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %147 = call i32 @chip_rcv_contexts(%struct.hfi1_devdata* %146)
  %148 = load i32, i32* @HFI1_MAX_SHARED_CTXTS, align 4
  %149 = mul nsw i32 %147, %148
  %150 = sext i32 %149 to i64
  %151 = mul i64 %150, 1
  %152 = trunc i64 %151 to i32
  %153 = call i64 @PAGE_ALIGN(i32 %152)
  store i64 %153, i64* %8, align 8
  %154 = load i64, i64* %8, align 8
  %155 = call i8* @vmalloc_user(i64 %154)
  %156 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %157 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %156, i32 0, i32 5
  store i8* %155, i8** %157, align 8
  %158 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %159 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %158, i32 0, i32 5
  %160 = load i8*, i8** %159, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %165, label %162

162:                                              ; preds = %145
  %163 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %164 = call i32 @dd_dev_err(%struct.hfi1_devdata* %163, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %165

165:                                              ; preds = %162, %145
  %166 = load i64, i64* @PAGE_SIZE, align 8
  %167 = call i8* @vmalloc_user(i64 %166)
  %168 = bitcast i8* %167 to %struct.TYPE_4__*
  %169 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %170 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %169, i32 0, i32 4
  store %struct.TYPE_4__* %168, %struct.TYPE_4__** %170, align 8
  %171 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %172 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %171, i32 0, i32 4
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = icmp ne %struct.TYPE_4__* %173, null
  br i1 %174, label %178, label %175

175:                                              ; preds = %165
  %176 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %177 = call i32 @dd_dev_err(%struct.hfi1_devdata* %176, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %178

178:                                              ; preds = %175, %165
  store i32 0, i32* %6, align 4
  br label %179

179:                                              ; preds = %206, %178
  %180 = load i32, i32* %6, align 4
  %181 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %182 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = icmp slt i32 %180, %183
  br i1 %184, label %185, label %209

185:                                              ; preds = %179
  %186 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %187 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %186, i32 0, i32 3
  %188 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %187, align 8
  %189 = load i32, i32* %6, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %188, i64 %190
  store %struct.hfi1_pportdata* %191, %struct.hfi1_pportdata** %11, align 8
  %192 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %193 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %192, i32 0, i32 4
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %193, align 8
  %195 = icmp ne %struct.TYPE_4__* %194, null
  br i1 %195, label %196, label %203

196:                                              ; preds = %185
  %197 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %198 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %197, i32 0, i32 4
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 0
  %201 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %11, align 8
  %202 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %201, i32 0, i32 0
  store i32* %200, i32** %202, align 8
  br label %203

203:                                              ; preds = %196, %185
  %204 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %11, align 8
  %205 = call i32 @set_mtu(%struct.hfi1_pportdata* %204)
  br label %206

206:                                              ; preds = %203
  %207 = load i32, i32* %6, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %6, align 4
  br label %179

209:                                              ; preds = %179
  %210 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %211 = call i32 @enable_chip(%struct.hfi1_devdata* %210)
  br label %212

212:                                              ; preds = %209, %88, %72
  %213 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %214 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %213, i32 0, i32 4
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %214, align 8
  %216 = icmp ne %struct.TYPE_4__* %215, null
  br i1 %216, label %217, label %227

217:                                              ; preds = %212
  %218 = load i32, i32* @HFI1_STATUS_CHIP_PRESENT, align 4
  %219 = load i32, i32* @HFI1_STATUS_INITTED, align 4
  %220 = or i32 %218, %219
  %221 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %222 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %221, i32 0, i32 4
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = or i32 %225, %220
  store i32 %226, i32* %224, align 4
  br label %227

227:                                              ; preds = %217, %212
  %228 = load i32, i32* %5, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %283, label %230

230:                                              ; preds = %227
  %231 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %232 = call i32 @enable_general_intr(%struct.hfi1_devdata* %231)
  %233 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %234 = call i32 @init_qsfp_int(%struct.hfi1_devdata* %233)
  store i32 0, i32* %6, align 4
  br label %235

235:                                              ; preds = %279, %230
  %236 = load i32, i32* %6, align 4
  %237 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %238 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = icmp slt i32 %236, %239
  br i1 %240, label %241, label %282

241:                                              ; preds = %235
  %242 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %243 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %242, i32 0, i32 3
  %244 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %243, align 8
  %245 = load i32, i32* %6, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %244, i64 %246
  store %struct.hfi1_pportdata* %247, %struct.hfi1_pportdata** %11, align 8
  %248 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %11, align 8
  %249 = call i32 @bringup_serdes(%struct.hfi1_pportdata* %248)
  store i32 %249, i32* %7, align 4
  %250 = load i32, i32* %7, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %258

252:                                              ; preds = %241
  %253 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %254 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %11, align 8
  %255 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @dd_dev_info(%struct.hfi1_devdata* %253, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %256)
  br label %258

258:                                              ; preds = %252, %241
  %259 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %11, align 8
  %260 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %259, i32 0, i32 0
  %261 = load i32*, i32** %260, align 8
  %262 = icmp ne i32* %261, null
  br i1 %262, label %263, label %272

263:                                              ; preds = %258
  %264 = load i32, i32* @HFI1_STATUS_CHIP_PRESENT, align 4
  %265 = load i32, i32* @HFI1_STATUS_INITTED, align 4
  %266 = or i32 %264, %265
  %267 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %11, align 8
  %268 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %267, i32 0, i32 0
  %269 = load i32*, i32** %268, align 8
  %270 = load i32, i32* %269, align 4
  %271 = or i32 %270, %266
  store i32 %271, i32* %269, align 4
  br label %272

272:                                              ; preds = %263, %258
  %273 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %11, align 8
  %274 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 8
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %278, label %277

277:                                              ; preds = %272
  br label %279

278:                                              ; preds = %272
  br label %279

279:                                              ; preds = %278, %277
  %280 = load i32, i32* %6, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %6, align 4
  br label %235

282:                                              ; preds = %235
  br label %283

283:                                              ; preds = %282, %227
  %284 = load i32, i32* %5, align 4
  ret i32 %284
}

declare dso_local i64 @is_ax(%struct.hfi1_devdata*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_after_reset(%struct.hfi1_devdata*) #1

declare dso_local i32 @loadtime_init(%struct.hfi1_devdata*) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*) #1

declare dso_local %struct.hfi1_ctxtdata* @hfi1_rcd_get_by_index(%struct.hfi1_devdata*, i64) #1

declare dso_local i32 @hfi1_create_rcvhdrq(%struct.hfi1_devdata*, %struct.hfi1_ctxtdata*) #1

declare dso_local i32 @hfi1_setup_eagerbufs(%struct.hfi1_ctxtdata*) #1

declare dso_local i32 @hfi1_kern_exp_rcv_init(%struct.hfi1_ctxtdata*, i32) #1

declare dso_local i32 @hfi1_rcd_put(%struct.hfi1_ctxtdata*) #1

declare dso_local i64 @PAGE_ALIGN(i32) #1

declare dso_local i32 @chip_rcv_contexts(%struct.hfi1_devdata*) #1

declare dso_local i8* @vmalloc_user(i64) #1

declare dso_local i32 @set_mtu(%struct.hfi1_pportdata*) #1

declare dso_local i32 @enable_chip(%struct.hfi1_devdata*) #1

declare dso_local i32 @enable_general_intr(%struct.hfi1_devdata*) #1

declare dso_local i32 @init_qsfp_int(%struct.hfi1_devdata*) #1

declare dso_local i32 @bringup_serdes(%struct.hfi1_pportdata*) #1

declare dso_local i32 @dd_dev_info(%struct.hfi1_devdata*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
