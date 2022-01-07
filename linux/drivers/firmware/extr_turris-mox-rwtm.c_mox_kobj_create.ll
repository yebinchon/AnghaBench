; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_turris-mox-rwtm.c_mox_kobj_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_turris-mox-rwtm.c_mox_kobj_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mox_rwtm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mox_rwtm* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mox_kobj_ktype = common dso_local global i32 0, align 4
@firmware_kobj = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"turris-mox-rwtm\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mox_rwtm*)* @mox_kobj_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mox_kobj_create(%struct.mox_rwtm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mox_rwtm*, align 8
  store %struct.mox_rwtm* %0, %struct.mox_rwtm** %3, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.TYPE_2__* @kzalloc(i32 8, i32 %4)
  %6 = load %struct.mox_rwtm*, %struct.mox_rwtm** %3, align 8
  %7 = getelementptr inbounds %struct.mox_rwtm, %struct.mox_rwtm* %6, i32 0, i32 0
  store %struct.TYPE_2__* %5, %struct.TYPE_2__** %7, align 8
  %8 = load %struct.mox_rwtm*, %struct.mox_rwtm** %3, align 8
  %9 = getelementptr inbounds %struct.mox_rwtm, %struct.mox_rwtm* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %36

15:                                               ; preds = %1
  %16 = load %struct.mox_rwtm*, %struct.mox_rwtm** %3, align 8
  %17 = call i32 @rwtm_to_kobj(%struct.mox_rwtm* %16)
  %18 = call i32 @kobject_init(i32 %17, i32* @mox_kobj_ktype)
  %19 = load %struct.mox_rwtm*, %struct.mox_rwtm** %3, align 8
  %20 = call i32 @rwtm_to_kobj(%struct.mox_rwtm* %19)
  %21 = load i32, i32* @firmware_kobj, align 4
  %22 = call i64 @kobject_add(i32 %20, i32 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %15
  %25 = load %struct.mox_rwtm*, %struct.mox_rwtm** %3, align 8
  %26 = call i32 @rwtm_to_kobj(%struct.mox_rwtm* %25)
  %27 = call i32 @kobject_put(i32 %26)
  %28 = load i32, i32* @ENXIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %36

30:                                               ; preds = %15
  %31 = load %struct.mox_rwtm*, %struct.mox_rwtm** %3, align 8
  %32 = load %struct.mox_rwtm*, %struct.mox_rwtm** %3, align 8
  %33 = getelementptr inbounds %struct.mox_rwtm, %struct.mox_rwtm* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store %struct.mox_rwtm* %31, %struct.mox_rwtm** %35, align 8
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %30, %24, %12
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.TYPE_2__* @kzalloc(i32, i32) #1

declare dso_local i32 @kobject_init(i32, i32*) #1

declare dso_local i32 @rwtm_to_kobj(%struct.mox_rwtm*) #1

declare dso_local i64 @kobject_add(i32, i32, i8*) #1

declare dso_local i32 @kobject_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
