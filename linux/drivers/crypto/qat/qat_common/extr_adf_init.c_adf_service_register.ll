; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_init.c_adf_service_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_init.c_adf_service_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.service_hndl = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adf_service_register(%struct.service_hndl* %0) #0 {
  %2 = alloca %struct.service_hndl*, align 8
  store %struct.service_hndl* %0, %struct.service_hndl** %2, align 8
  %3 = load %struct.service_hndl*, %struct.service_hndl** %2, align 8
  %4 = getelementptr inbounds %struct.service_hndl, %struct.service_hndl* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @memset(i32 %5, i32 0, i32 4)
  %7 = load %struct.service_hndl*, %struct.service_hndl** %2, align 8
  %8 = getelementptr inbounds %struct.service_hndl, %struct.service_hndl* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @memset(i32 %9, i32 0, i32 4)
  %11 = load %struct.service_hndl*, %struct.service_hndl** %2, align 8
  %12 = call i32 @adf_service_add(%struct.service_hndl* %11)
  ret i32 0
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @adf_service_add(%struct.service_hndl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
