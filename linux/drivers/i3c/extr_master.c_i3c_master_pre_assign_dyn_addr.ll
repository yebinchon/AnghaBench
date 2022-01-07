; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_master_pre_assign_dyn_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_master_pre_assign_dyn_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i3c_dev_desc = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.i3c_master_controller = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i3c_dev_desc*)* @i3c_master_pre_assign_dyn_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i3c_master_pre_assign_dyn_addr(%struct.i3c_dev_desc* %0) #0 {
  %2 = alloca %struct.i3c_dev_desc*, align 8
  %3 = alloca %struct.i3c_master_controller*, align 8
  %4 = alloca i32, align 4
  store %struct.i3c_dev_desc* %0, %struct.i3c_dev_desc** %2, align 8
  %5 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %2, align 8
  %6 = call %struct.i3c_master_controller* @i3c_dev_get_master(%struct.i3c_dev_desc* %5)
  store %struct.i3c_master_controller* %6, %struct.i3c_master_controller** %3, align 8
  %7 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %2, align 8
  %8 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %2, align 8
  %13 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %11
  %19 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %2, align 8
  %20 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18, %11, %1
  br label %70

26:                                               ; preds = %18
  %27 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %3, align 8
  %28 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %2, align 8
  %29 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %2, align 8
  %33 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @i3c_master_setdasa_locked(%struct.i3c_master_controller* %27, i32 %31, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  br label %70

41:                                               ; preds = %26
  %42 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %2, align 8
  %43 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %2, align 8
  %48 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %2, align 8
  %51 = call i32 @i3c_master_reattach_i3c_dev(%struct.i3c_dev_desc* %50, i32 0)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %41
  br label %62

55:                                               ; preds = %41
  %56 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %2, align 8
  %57 = call i32 @i3c_master_retrieve_dev_info(%struct.i3c_dev_desc* %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %62

61:                                               ; preds = %55
  br label %70

62:                                               ; preds = %60, %54
  %63 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %3, align 8
  %64 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %2, align 8
  %65 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @i3c_master_rstdaa_locked(%struct.i3c_master_controller* %63, i32 %68)
  br label %70

70:                                               ; preds = %62, %61, %40, %25
  ret void
}

declare dso_local %struct.i3c_master_controller* @i3c_dev_get_master(%struct.i3c_dev_desc*) #1

declare dso_local i32 @i3c_master_setdasa_locked(%struct.i3c_master_controller*, i32, i32) #1

declare dso_local i32 @i3c_master_reattach_i3c_dev(%struct.i3c_dev_desc*, i32) #1

declare dso_local i32 @i3c_master_retrieve_dev_info(%struct.i3c_dev_desc*) #1

declare dso_local i32 @i3c_master_rstdaa_locked(%struct.i3c_master_controller*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
