; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_applesmc.c_applesmc_init_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_applesmc.c_applesmc_init_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.applesmc_registers = type { i32, i32, i32, i32*, i32 }
%struct.applesmc_entry = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TEMP_SENSOR_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.applesmc_registers*)* @applesmc_init_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @applesmc_init_index(%struct.applesmc_registers* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.applesmc_registers*, align 8
  %4 = alloca %struct.applesmc_entry*, align 8
  %5 = alloca i32, align 4
  store %struct.applesmc_registers* %0, %struct.applesmc_registers** %3, align 8
  %6 = load %struct.applesmc_registers*, %struct.applesmc_registers** %3, align 8
  %7 = getelementptr inbounds %struct.applesmc_registers, %struct.applesmc_registers* %6, i32 0, i32 3
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %68

11:                                               ; preds = %1
  %12 = load %struct.applesmc_registers*, %struct.applesmc_registers** %3, align 8
  %13 = getelementptr inbounds %struct.applesmc_registers, %struct.applesmc_registers* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32* @kcalloc(i32 %14, i32 4, i32 %15)
  %17 = load %struct.applesmc_registers*, %struct.applesmc_registers** %3, align 8
  %18 = getelementptr inbounds %struct.applesmc_registers, %struct.applesmc_registers* %17, i32 0, i32 3
  store i32* %16, i32** %18, align 8
  %19 = load %struct.applesmc_registers*, %struct.applesmc_registers** %3, align 8
  %20 = getelementptr inbounds %struct.applesmc_registers, %struct.applesmc_registers* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %11
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %68

26:                                               ; preds = %11
  %27 = load %struct.applesmc_registers*, %struct.applesmc_registers** %3, align 8
  %28 = getelementptr inbounds %struct.applesmc_registers, %struct.applesmc_registers* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %64, %26
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.applesmc_registers*, %struct.applesmc_registers** %3, align 8
  %33 = getelementptr inbounds %struct.applesmc_registers, %struct.applesmc_registers* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ult i32 %31, %34
  br i1 %35, label %36, label %67

36:                                               ; preds = %30
  %37 = load i32, i32* %5, align 4
  %38 = call %struct.applesmc_entry* @applesmc_get_entry_by_index(i32 %37)
  store %struct.applesmc_entry* %38, %struct.applesmc_entry** %4, align 8
  %39 = load %struct.applesmc_entry*, %struct.applesmc_entry** %4, align 8
  %40 = call i64 @IS_ERR(%struct.applesmc_entry* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %64

43:                                               ; preds = %36
  %44 = load %struct.applesmc_entry*, %struct.applesmc_entry** %4, align 8
  %45 = getelementptr inbounds %struct.applesmc_entry, %struct.applesmc_entry* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @TEMP_SENSOR_TYPE, align 4
  %48 = call i64 @strcmp(i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %64

51:                                               ; preds = %43
  %52 = load %struct.applesmc_entry*, %struct.applesmc_entry** %4, align 8
  %53 = getelementptr inbounds %struct.applesmc_entry, %struct.applesmc_entry* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.applesmc_registers*, %struct.applesmc_registers** %3, align 8
  %56 = getelementptr inbounds %struct.applesmc_registers, %struct.applesmc_registers* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.applesmc_registers*, %struct.applesmc_registers** %3, align 8
  %59 = getelementptr inbounds %struct.applesmc_registers, %struct.applesmc_registers* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i32, i32* %57, i64 %62
  store i32 %54, i32* %63, align 4
  br label %64

64:                                               ; preds = %51, %50, %42
  %65 = load i32, i32* %5, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %30

67:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %23, %10
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local %struct.applesmc_entry* @applesmc_get_entry_by_index(i32) #1

declare dso_local i64 @IS_ERR(%struct.applesmc_entry*) #1

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
