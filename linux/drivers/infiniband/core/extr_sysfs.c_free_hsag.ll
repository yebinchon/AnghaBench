; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_sysfs.c_free_hsag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_sysfs.c_free_hsag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute_group = type { %struct.attribute_group** }
%struct.attribute = type { %struct.attribute** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kobject*, %struct.attribute_group*)* @free_hsag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_hsag(%struct.kobject* %0, %struct.attribute_group* %1) #0 {
  %3 = alloca %struct.kobject*, align 8
  %4 = alloca %struct.attribute_group*, align 8
  %5 = alloca %struct.attribute**, align 8
  store %struct.kobject* %0, %struct.kobject** %3, align 8
  store %struct.attribute_group* %1, %struct.attribute_group** %4, align 8
  %6 = load %struct.kobject*, %struct.kobject** %3, align 8
  %7 = load %struct.attribute_group*, %struct.attribute_group** %4, align 8
  %8 = call i32 @sysfs_remove_group(%struct.kobject* %6, %struct.attribute_group* %7)
  %9 = load %struct.attribute_group*, %struct.attribute_group** %4, align 8
  %10 = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %9, i32 0, i32 0
  %11 = load %struct.attribute_group**, %struct.attribute_group*** %10, align 8
  %12 = bitcast %struct.attribute_group** %11 to %struct.attribute**
  store %struct.attribute** %12, %struct.attribute*** %5, align 8
  br label %13

13:                                               ; preds = %22, %2
  %14 = load %struct.attribute**, %struct.attribute*** %5, align 8
  %15 = load %struct.attribute*, %struct.attribute** %14, align 8
  %16 = icmp ne %struct.attribute* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load %struct.attribute**, %struct.attribute*** %5, align 8
  %19 = load %struct.attribute*, %struct.attribute** %18, align 8
  %20 = bitcast %struct.attribute* %19 to %struct.attribute_group*
  %21 = call i32 @kfree(%struct.attribute_group* %20)
  br label %22

22:                                               ; preds = %17
  %23 = load %struct.attribute**, %struct.attribute*** %5, align 8
  %24 = getelementptr inbounds %struct.attribute*, %struct.attribute** %23, i32 1
  store %struct.attribute** %24, %struct.attribute*** %5, align 8
  br label %13

25:                                               ; preds = %13
  %26 = load %struct.attribute_group*, %struct.attribute_group** %4, align 8
  %27 = call i32 @kfree(%struct.attribute_group* %26)
  ret void
}

declare dso_local i32 @sysfs_remove_group(%struct.kobject*, %struct.attribute_group*) #1

declare dso_local i32 @kfree(%struct.attribute_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
