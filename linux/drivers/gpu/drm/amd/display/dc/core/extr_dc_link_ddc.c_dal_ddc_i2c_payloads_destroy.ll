; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_ddc.c_dal_ddc_i2c_payloads_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_ddc.c_dal_ddc_i2c_payloads_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_payloads = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_payloads**)* @dal_ddc_i2c_payloads_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dal_ddc_i2c_payloads_destroy(%struct.i2c_payloads** %0) #0 {
  %2 = alloca %struct.i2c_payloads**, align 8
  store %struct.i2c_payloads** %0, %struct.i2c_payloads*** %2, align 8
  %3 = load %struct.i2c_payloads**, %struct.i2c_payloads*** %2, align 8
  %4 = icmp ne %struct.i2c_payloads** %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load %struct.i2c_payloads**, %struct.i2c_payloads*** %2, align 8
  %7 = load %struct.i2c_payloads*, %struct.i2c_payloads** %6, align 8
  %8 = icmp ne %struct.i2c_payloads* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5, %1
  br label %19

10:                                               ; preds = %5
  %11 = load %struct.i2c_payloads**, %struct.i2c_payloads*** %2, align 8
  %12 = load %struct.i2c_payloads*, %struct.i2c_payloads** %11, align 8
  %13 = getelementptr inbounds %struct.i2c_payloads, %struct.i2c_payloads* %12, i32 0, i32 0
  %14 = call i32 @dal_vector_destruct(i32* %13)
  %15 = load %struct.i2c_payloads**, %struct.i2c_payloads*** %2, align 8
  %16 = load %struct.i2c_payloads*, %struct.i2c_payloads** %15, align 8
  %17 = call i32 @kfree(%struct.i2c_payloads* %16)
  %18 = load %struct.i2c_payloads**, %struct.i2c_payloads*** %2, align 8
  store %struct.i2c_payloads* null, %struct.i2c_payloads** %18, align 8
  br label %19

19:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @dal_vector_destruct(i32*) #1

declare dso_local i32 @kfree(%struct.i2c_payloads*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
