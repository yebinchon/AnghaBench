; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ibmaem.c_aem_register_bmc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ibmaem.c_aem_register_bmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.aem_ipmi_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.device*)* @aem_register_bmc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aem_register_bmc(i32 %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.aem_ipmi_data, align 4
  store i32 %0, i32* %3, align 4
  store %struct.device* %1, %struct.device** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call i64 @aem_init_ipmi_data(%struct.aem_ipmi_data* %5, i32 %6, %struct.device* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %17

11:                                               ; preds = %2
  %12 = call i32 @aem_init_aem1(%struct.aem_ipmi_data* %5)
  %13 = call i32 @aem_init_aem2(%struct.aem_ipmi_data* %5)
  %14 = getelementptr inbounds %struct.aem_ipmi_data, %struct.aem_ipmi_data* %5, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ipmi_destroy_user(i32 %15)
  br label %17

17:                                               ; preds = %11, %10
  ret void
}

declare dso_local i64 @aem_init_ipmi_data(%struct.aem_ipmi_data*, i32, %struct.device*) #1

declare dso_local i32 @aem_init_aem1(%struct.aem_ipmi_data*) #1

declare dso_local i32 @aem_init_aem2(%struct.aem_ipmi_data*) #1

declare dso_local i32 @ipmi_destroy_user(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
