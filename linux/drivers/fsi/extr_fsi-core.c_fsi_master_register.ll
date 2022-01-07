; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-core.c_fsi_master_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-core.c_fsi_master_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_master = type { i32, i32, i32 }
%struct.device_node = type { i32 }

@master_ida = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"fsi%d\00", align 1
@dev_attr_rescan = common dso_local global i32 0, align 4
@dev_attr_break = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"no-scan-on-init\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsi_master_register(%struct.fsi_master* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsi_master*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  store %struct.fsi_master* %0, %struct.fsi_master** %3, align 8
  %6 = load %struct.fsi_master*, %struct.fsi_master** %3, align 8
  %7 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %6, i32 0, i32 0
  %8 = call i32 @mutex_init(i32* %7)
  %9 = load i32, i32* @INT_MAX, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i32 @ida_simple_get(i32* @master_ida, i32 0, i32 %9, i32 %10)
  %12 = load %struct.fsi_master*, %struct.fsi_master** %3, align 8
  %13 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load %struct.fsi_master*, %struct.fsi_master** %3, align 8
  %15 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %14, i32 0, i32 1
  %16 = load %struct.fsi_master*, %struct.fsi_master** %3, align 8
  %17 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_set_name(i32* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.fsi_master*, %struct.fsi_master** %3, align 8
  %21 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %20, i32 0, i32 1
  %22 = call i32 @device_register(i32* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load %struct.fsi_master*, %struct.fsi_master** %3, align 8
  %27 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ida_simple_remove(i32* @master_ida, i32 %28)
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %78

31:                                               ; preds = %1
  %32 = load %struct.fsi_master*, %struct.fsi_master** %3, align 8
  %33 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %32, i32 0, i32 1
  %34 = call i32 @device_create_file(i32* %33, i32* @dev_attr_rescan)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = load %struct.fsi_master*, %struct.fsi_master** %3, align 8
  %39 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %38, i32 0, i32 1
  %40 = call i32 @device_del(i32* %39)
  %41 = load %struct.fsi_master*, %struct.fsi_master** %3, align 8
  %42 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ida_simple_remove(i32* @master_ida, i32 %43)
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %78

46:                                               ; preds = %31
  %47 = load %struct.fsi_master*, %struct.fsi_master** %3, align 8
  %48 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %47, i32 0, i32 1
  %49 = call i32 @device_create_file(i32* %48, i32* @dev_attr_break)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = load %struct.fsi_master*, %struct.fsi_master** %3, align 8
  %54 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %53, i32 0, i32 1
  %55 = call i32 @device_del(i32* %54)
  %56 = load %struct.fsi_master*, %struct.fsi_master** %3, align 8
  %57 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ida_simple_remove(i32* @master_ida, i32 %58)
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %78

61:                                               ; preds = %46
  %62 = load %struct.fsi_master*, %struct.fsi_master** %3, align 8
  %63 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %62, i32 0, i32 1
  %64 = call %struct.device_node* @dev_of_node(i32* %63)
  store %struct.device_node* %64, %struct.device_node** %5, align 8
  %65 = load %struct.device_node*, %struct.device_node** %5, align 8
  %66 = call i32 @of_property_read_bool(%struct.device_node* %65, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %61
  %69 = load %struct.fsi_master*, %struct.fsi_master** %3, align 8
  %70 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %69, i32 0, i32 0
  %71 = call i32 @mutex_lock(i32* %70)
  %72 = load %struct.fsi_master*, %struct.fsi_master** %3, align 8
  %73 = call i32 @fsi_master_scan(%struct.fsi_master* %72)
  %74 = load %struct.fsi_master*, %struct.fsi_master** %3, align 8
  %75 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %74, i32 0, i32 0
  %76 = call i32 @mutex_unlock(i32* %75)
  br label %77

77:                                               ; preds = %68, %61
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %77, %52, %37, %25
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @dev_set_name(i32*, i8*, i32) #1

declare dso_local i32 @device_register(i32*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32 @device_del(i32*) #1

declare dso_local %struct.device_node* @dev_of_node(i32*) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fsi_master_scan(%struct.fsi_master*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
