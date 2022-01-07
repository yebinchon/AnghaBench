; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_init.c_hfi1_init_pportdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_init.c_hfi1_init_pportdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.hfi1_pportdata = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__*, i32, i32*, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64*, i64*, i32, %struct.hfi1_devdata* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__, i64, %struct.hfi1_pportdata* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.hfi1_pportdata*, i32, i32 }
%struct.hfi1_devdata = type { i32 }
%struct.cc_state = type { i32 }

@LINK_WIDTH_DEFAULT = common dso_local global i32 0, align 4
@C_VL_COUNT = common dso_local global i32 0, align 4
@DEFAULT_P_KEY = common dso_local global i32 0, align 4
@HFI1_PART_ENFORCE_IN = common dso_local global i32 0, align 4
@loopback = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Faking data partition 0x8001 in idx %u\0A\00", align 1
@handle_verify_cap = common dso_local global i32 0, align 4
@handle_link_up = common dso_local global i32 0, align 4
@handle_link_down = common dso_local global i32 0, align 4
@handle_freeze = common dso_local global i32 0, align 4
@handle_link_downgrade = common dso_local global i32 0, align 4
@handle_sma_message = common dso_local global i32 0, align 4
@handle_link_bounce = common dso_local global i32 0, align 4
@handle_start_link = common dso_local global i32 0, align 4
@receive_interrupt_work = common dso_local global i32 0, align 4
@qsfp_event = common dso_local global i32 0, align 4
@OPA_MAX_SLS = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@cca_timer_fn = common dso_local global i32 0, align 4
@IB_CC_TABLE_CAP_DEFAULT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Congestion Control Agent disabled for port %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfi1_init_pportdata(%struct.pci_dev* %0, %struct.hfi1_pportdata* %1, %struct.hfi1_devdata* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.hfi1_pportdata*, align 8
  %8 = alloca %struct.hfi1_devdata*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.cc_state*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %6, align 8
  store %struct.hfi1_pportdata* %1, %struct.hfi1_pportdata** %7, align 8
  store %struct.hfi1_devdata* %2, %struct.hfi1_devdata** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  %15 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %16 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %15, i32 0, i32 27
  store %struct.hfi1_devdata* %14, %struct.hfi1_devdata** %16, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %19 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %22 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @LINK_WIDTH_DEFAULT, align 4
  %24 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %25 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %24, i32 0, i32 26
  store i32 %23, i32* %25, align 8
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %44, %5
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @C_VL_COUNT, align 4
  %29 = add nsw i32 %28, 1
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %26
  %32 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %33 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %32, i32 0, i32 25
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  store i64 0, i64* %37, align 8
  %38 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %39 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %38, i32 0, i32 24
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %31
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  br label %26

47:                                               ; preds = %26
  store i64 1, i64* %12, align 8
  %48 = load i32, i32* @DEFAULT_P_KEY, align 4
  %49 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %50 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* %12, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32 %48, i32* %53, align 4
  %54 = load i32, i32* @HFI1_PART_ENFORCE_IN, align 4
  %55 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %56 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %55, i32 0, i32 23
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load i64, i64* @loopback, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %47
  %62 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  %63 = load i64, i64* %12, align 8
  %64 = icmp ne i64 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i32 @dd_dev_err(%struct.hfi1_devdata* %62, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %69 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* %12, align 8
  %72 = icmp ne i64 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %70, i64 %75
  store i32 32769, i32* %76, align 4
  br label %77

77:                                               ; preds = %61, %47
  %78 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %79 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %78, i32 0, i32 22
  %80 = load i32, i32* @handle_verify_cap, align 4
  %81 = call i32 @INIT_WORK(i32* %79, i32 %80)
  %82 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %83 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %82, i32 0, i32 21
  %84 = load i32, i32* @handle_link_up, align 4
  %85 = call i32 @INIT_WORK(i32* %83, i32 %84)
  %86 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %87 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %86, i32 0, i32 20
  %88 = load i32, i32* @handle_link_down, align 4
  %89 = call i32 @INIT_WORK(i32* %87, i32 %88)
  %90 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %91 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %90, i32 0, i32 19
  %92 = load i32, i32* @handle_freeze, align 4
  %93 = call i32 @INIT_WORK(i32* %91, i32 %92)
  %94 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %95 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %94, i32 0, i32 18
  %96 = load i32, i32* @handle_link_downgrade, align 4
  %97 = call i32 @INIT_WORK(i32* %95, i32 %96)
  %98 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %99 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %98, i32 0, i32 17
  %100 = load i32, i32* @handle_sma_message, align 4
  %101 = call i32 @INIT_WORK(i32* %99, i32 %100)
  %102 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %103 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %102, i32 0, i32 16
  %104 = load i32, i32* @handle_link_bounce, align 4
  %105 = call i32 @INIT_WORK(i32* %103, i32 %104)
  %106 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %107 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %106, i32 0, i32 15
  %108 = load i32, i32* @handle_start_link, align 4
  %109 = call i32 @INIT_DELAYED_WORK(i32* %107, i32 %108)
  %110 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %111 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %110, i32 0, i32 14
  %112 = load i32, i32* @receive_interrupt_work, align 4
  %113 = call i32 @INIT_WORK(i32* %111, i32 %112)
  %114 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %115 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %114, i32 0, i32 12
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 2
  %117 = load i32, i32* @qsfp_event, align 4
  %118 = call i32 @INIT_WORK(i32* %116, i32 %117)
  %119 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %120 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %119, i32 0, i32 13
  %121 = call i32 @mutex_init(i32* %120)
  %122 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %123 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %122, i32 0, i32 12
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = call i32 @spin_lock_init(i32* %124)
  %126 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %127 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %128 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %127, i32 0, i32 12
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  store %struct.hfi1_pportdata* %126, %struct.hfi1_pportdata** %129, align 8
  %130 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %131 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %130, i32 0, i32 3
  store i32 0, i32* %131, align 8
  %132 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %133 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %132, i32 0, i32 4
  store i32 1, i32* %133, align 4
  %134 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %135 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %134, i32 0, i32 11
  store i32* null, i32** %135, align 8
  %136 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %137 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %136, i32 0, i32 10
  %138 = call i32 @spin_lock_init(i32* %137)
  store i32 0, i32* %11, align 4
  br label %139

139:                                              ; preds = %186, %77
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* @OPA_MAX_SLS, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %189

143:                                              ; preds = %139
  %144 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %145 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %144, i32 0, i32 9
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %145, align 8
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 1
  %151 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %152 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %153 = call i32 @hrtimer_init(%struct.TYPE_6__* %150, i32 %151, i32 %152)
  %154 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %155 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %156 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %155, i32 0, i32 9
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %156, align 8
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 3
  store %struct.hfi1_pportdata* %154, %struct.hfi1_pportdata** %161, align 8
  %162 = load i32, i32* %11, align 4
  %163 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %164 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %163, i32 0, i32 9
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %164, align 8
  %166 = load i32, i32* %11, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  store i32 %162, i32* %169, align 8
  %170 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %171 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %170, i32 0, i32 9
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %171, align 8
  %173 = load i32, i32* %11, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 2
  store i64 0, i64* %176, align 8
  %177 = load i32, i32* @cca_timer_fn, align 4
  %178 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %179 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %178, i32 0, i32 9
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %179, align 8
  %181 = load i32, i32* %11, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  store i32 %177, i32* %185, align 4
  br label %186

186:                                              ; preds = %143
  %187 = load i32, i32* %11, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %11, align 4
  br label %139

189:                                              ; preds = %139
  %190 = load i32, i32* @IB_CC_TABLE_CAP_DEFAULT, align 4
  %191 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %192 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %191, i32 0, i32 8
  store i32 %190, i32* %192, align 4
  %193 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %194 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %193, i32 0, i32 7
  %195 = call i32 @spin_lock_init(i32* %194)
  %196 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %197 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %196, i32 0, i32 6
  %198 = call i32 @spin_lock_init(i32* %197)
  %199 = load i32, i32* @GFP_KERNEL, align 4
  %200 = call %struct.cc_state* @kzalloc(i32 4, i32 %199)
  store %struct.cc_state* %200, %struct.cc_state** %13, align 8
  %201 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %202 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.cc_state*, %struct.cc_state** %13, align 8
  %205 = call i32 @RCU_INIT_POINTER(i32 %203, %struct.cc_state* %204)
  %206 = load %struct.cc_state*, %struct.cc_state** %13, align 8
  %207 = icmp ne %struct.cc_state* %206, null
  br i1 %207, label %209, label %208

208:                                              ; preds = %189
  br label %210

209:                                              ; preds = %189
  br label %214

210:                                              ; preds = %208
  %211 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  %212 = load i32, i32* %10, align 4
  %213 = call i32 @dd_dev_err(%struct.hfi1_devdata* %211, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %212)
  br label %214

214:                                              ; preds = %210, %209
  ret void
}

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_6__*, i32, i32) #1

declare dso_local %struct.cc_state* @kzalloc(i32, i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, %struct.cc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
