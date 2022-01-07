; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/google/extr_vpd.c_vpd_section_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/google/extr_vpd.c_vpd_section_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpd_section = type { i32, i32, i32, i32, i32 }

@vpd_kobj = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpd_section*)* @vpd_section_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpd_section_destroy(%struct.vpd_section* %0) #0 {
  %2 = alloca %struct.vpd_section*, align 8
  store %struct.vpd_section* %0, %struct.vpd_section** %2, align 8
  %3 = load %struct.vpd_section*, %struct.vpd_section** %2, align 8
  %4 = getelementptr inbounds %struct.vpd_section, %struct.vpd_section* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %1
  %8 = load %struct.vpd_section*, %struct.vpd_section** %2, align 8
  %9 = call i32 @vpd_section_attrib_destroy(%struct.vpd_section* %8)
  %10 = load %struct.vpd_section*, %struct.vpd_section** %2, align 8
  %11 = getelementptr inbounds %struct.vpd_section, %struct.vpd_section* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @kobject_put(i32 %12)
  %14 = load i32, i32* @vpd_kobj, align 4
  %15 = load %struct.vpd_section*, %struct.vpd_section** %2, align 8
  %16 = getelementptr inbounds %struct.vpd_section, %struct.vpd_section* %15, i32 0, i32 3
  %17 = call i32 @sysfs_remove_bin_file(i32 %14, i32* %16)
  %18 = load %struct.vpd_section*, %struct.vpd_section** %2, align 8
  %19 = getelementptr inbounds %struct.vpd_section, %struct.vpd_section* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @kfree(i32 %20)
  %22 = load %struct.vpd_section*, %struct.vpd_section** %2, align 8
  %23 = getelementptr inbounds %struct.vpd_section, %struct.vpd_section* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @memunmap(i32 %24)
  %26 = load %struct.vpd_section*, %struct.vpd_section** %2, align 8
  %27 = getelementptr inbounds %struct.vpd_section, %struct.vpd_section* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %7, %1
  ret i32 0
}

declare dso_local i32 @vpd_section_attrib_destroy(%struct.vpd_section*) #1

declare dso_local i32 @kobject_put(i32) #1

declare dso_local i32 @sysfs_remove_bin_file(i32, i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @memunmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
