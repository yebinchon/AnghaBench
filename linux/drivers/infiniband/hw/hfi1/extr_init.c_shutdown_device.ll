; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_init.c_shutdown_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_init.c_shutdown_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32, i32, i32, i32, %struct.TYPE_2__*, %struct.hfi1_pportdata* }
%struct.TYPE_2__ = type { i32 }
%struct.hfi1_pportdata = type { i32*, i32*, i32*, i64 }
%struct.hfi1_ctxtdata = type { i32 }

@HFI1_SHUTDOWN = common dso_local global i32 0, align 4
@HFI1_STATUS_IB_CONF = common dso_local global i32 0, align 4
@HFI1_STATUS_IB_READY = common dso_local global i32 0, align 4
@HFI1_INITTED = common dso_local global i32 0, align 4
@IS_FIRST_SOURCE = common dso_local global i32 0, align 4
@IS_LAST_SOURCE = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_TAILUPD_DIS = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_CTXT_DIS = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_INTRAVAIL_DIS = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_PKEY_DIS = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_ONE_PKT_EGR_DIS = common dso_local global i32 0, align 4
@PSC_GLOBAL_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*)* @shutdown_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shutdown_device(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca %struct.hfi1_devdata*, align 8
  %3 = alloca %struct.hfi1_pportdata*, align 8
  %4 = alloca %struct.hfi1_ctxtdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %2, align 8
  %7 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %8 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @HFI1_SHUTDOWN, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %202

14:                                               ; preds = %1
  %15 = load i32, i32* @HFI1_SHUTDOWN, align 4
  %16 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %17 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %50, %14
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %23 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ult i32 %21, %24
  br i1 %25, label %26, label %53

26:                                               ; preds = %20
  %27 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %28 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %27, i32 0, i32 5
  %29 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %29, i64 %31
  store %struct.hfi1_pportdata* %32, %struct.hfi1_pportdata** %3, align 8
  %33 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %34 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %33, i32 0, i32 3
  store i64 0, i64* %34, align 8
  %35 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %36 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %26
  %40 = load i32, i32* @HFI1_STATUS_IB_CONF, align 4
  %41 = load i32, i32* @HFI1_STATUS_IB_READY, align 4
  %42 = or i32 %40, %41
  %43 = xor i32 %42, -1
  %44 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %45 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %43
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %39, %26
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %5, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %20

53:                                               ; preds = %20
  %54 = load i32, i32* @HFI1_INITTED, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %57 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %61 = load i32, i32* @IS_FIRST_SOURCE, align 4
  %62 = load i32, i32* @IS_LAST_SOURCE, align 4
  %63 = call i32 @set_intr_bits(%struct.hfi1_devdata* %60, i32 %61, i32 %62, i32 0)
  %64 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %65 = call i32 @msix_clean_up_interrupts(%struct.hfi1_devdata* %64)
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %127, %53
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %69 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ult i32 %67, %70
  br i1 %71, label %72, label %130

72:                                               ; preds = %66
  %73 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %74 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %73, i32 0, i32 5
  %75 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %75, i64 %77
  store %struct.hfi1_pportdata* %78, %struct.hfi1_pportdata** %3, align 8
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %103, %72
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %82 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %106

85:                                               ; preds = %79
  %86 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call %struct.hfi1_ctxtdata* @hfi1_rcd_get_by_index(%struct.hfi1_devdata* %86, i32 %87)
  store %struct.hfi1_ctxtdata* %88, %struct.hfi1_ctxtdata** %4, align 8
  %89 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %90 = load i32, i32* @HFI1_RCVCTRL_TAILUPD_DIS, align 4
  %91 = load i32, i32* @HFI1_RCVCTRL_CTXT_DIS, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @HFI1_RCVCTRL_INTRAVAIL_DIS, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @HFI1_RCVCTRL_PKEY_DIS, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @HFI1_RCVCTRL_ONE_PKT_EGR_DIS, align 4
  %98 = or i32 %96, %97
  %99 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %100 = call i32 @hfi1_rcvctrl(%struct.hfi1_devdata* %89, i32 %98, %struct.hfi1_ctxtdata* %99)
  %101 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %102 = call i32 @hfi1_rcd_put(%struct.hfi1_ctxtdata* %101)
  br label %103

103:                                              ; preds = %85
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %79

106:                                              ; preds = %79
  store i32 0, i32* %6, align 4
  br label %107

107:                                              ; preds = %123, %106
  %108 = load i32, i32* %6, align 4
  %109 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %110 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %126

113:                                              ; preds = %107
  %114 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %115 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %114, i32 0, i32 4
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @sc_flush(i32 %121)
  br label %123

123:                                              ; preds = %113
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %6, align 4
  br label %107

126:                                              ; preds = %107
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %5, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %5, align 4
  br label %66

130:                                              ; preds = %66
  %131 = call i32 @udelay(i32 20)
  store i32 0, i32* %5, align 4
  br label %132

132:                                              ; preds = %196, %130
  %133 = load i32, i32* %5, align 4
  %134 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %135 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp ult i32 %133, %136
  br i1 %137, label %138, label %199

138:                                              ; preds = %132
  %139 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %140 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %139, i32 0, i32 5
  %141 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %140, align 8
  %142 = load i32, i32* %5, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %141, i64 %143
  store %struct.hfi1_pportdata* %144, %struct.hfi1_pportdata** %3, align 8
  store i32 0, i32* %6, align 4
  br label %145

145:                                              ; preds = %161, %138
  %146 = load i32, i32* %6, align 4
  %147 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %148 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = icmp slt i32 %146, %149
  br i1 %150, label %151, label %164

151:                                              ; preds = %145
  %152 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %153 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %152, i32 0, i32 4
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @sc_disable(i32 %159)
  br label %161

161:                                              ; preds = %151
  %162 = load i32, i32* %6, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %6, align 4
  br label %145

164:                                              ; preds = %145
  %165 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %166 = load i32, i32* @PSC_GLOBAL_DISABLE, align 4
  %167 = call i32 @pio_send_control(%struct.hfi1_devdata* %165, i32 %166)
  %168 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %169 = call i32 @shutdown_led_override(%struct.hfi1_pportdata* %168)
  %170 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %171 = call i32 @hfi1_quiet_serdes(%struct.hfi1_pportdata* %170)
  %172 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %173 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %172, i32 0, i32 2
  %174 = load i32*, i32** %173, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %183

176:                                              ; preds = %164
  %177 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %178 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %177, i32 0, i32 2
  %179 = load i32*, i32** %178, align 8
  %180 = call i32 @destroy_workqueue(i32* %179)
  %181 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %182 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %181, i32 0, i32 2
  store i32* null, i32** %182, align 8
  br label %183

183:                                              ; preds = %176, %164
  %184 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %185 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = icmp ne i32* %186, null
  br i1 %187, label %188, label %195

188:                                              ; preds = %183
  %189 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %190 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = call i32 @destroy_workqueue(i32* %191)
  %193 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %194 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %193, i32 0, i32 1
  store i32* null, i32** %194, align 8
  br label %195

195:                                              ; preds = %188, %183
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %5, align 4
  %198 = add i32 %197, 1
  store i32 %198, i32* %5, align 4
  br label %132

199:                                              ; preds = %132
  %200 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %201 = call i32 @sdma_exit(%struct.hfi1_devdata* %200)
  br label %202

202:                                              ; preds = %199, %13
  ret void
}

declare dso_local i32 @set_intr_bits(%struct.hfi1_devdata*, i32, i32, i32) #1

declare dso_local i32 @msix_clean_up_interrupts(%struct.hfi1_devdata*) #1

declare dso_local %struct.hfi1_ctxtdata* @hfi1_rcd_get_by_index(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @hfi1_rcvctrl(%struct.hfi1_devdata*, i32, %struct.hfi1_ctxtdata*) #1

declare dso_local i32 @hfi1_rcd_put(%struct.hfi1_ctxtdata*) #1

declare dso_local i32 @sc_flush(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @sc_disable(i32) #1

declare dso_local i32 @pio_send_control(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @shutdown_led_override(%struct.hfi1_pportdata*) #1

declare dso_local i32 @hfi1_quiet_serdes(%struct.hfi1_pportdata*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @sdma_exit(%struct.hfi1_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
