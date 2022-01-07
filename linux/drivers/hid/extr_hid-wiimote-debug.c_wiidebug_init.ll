; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-debug.c_wiidebug_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-debug.c_wiidebug_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_data = type { %struct.TYPE_4__, %struct.wiimote_debug*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.wiimote_debug = type { i8*, i8*, %struct.wiimote_data* }
%struct.TYPE_3__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"eeprom\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@wiidebug_eeprom_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"drm\00", align 1
@wiidebug_drm_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wiidebug_init(%struct.wiimote_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wiimote_data*, align 8
  %4 = alloca %struct.wiimote_debug*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.wiimote_data* %0, %struct.wiimote_data** %3, align 8
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.wiimote_debug* @kzalloc(i32 24, i32 %9)
  store %struct.wiimote_debug* %10, %struct.wiimote_debug** %4, align 8
  %11 = load %struct.wiimote_debug*, %struct.wiimote_debug** %4, align 8
  %12 = icmp ne %struct.wiimote_debug* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %78

16:                                               ; preds = %1
  %17 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %18 = load %struct.wiimote_debug*, %struct.wiimote_debug** %4, align 8
  %19 = getelementptr inbounds %struct.wiimote_debug, %struct.wiimote_debug* %18, i32 0, i32 2
  store %struct.wiimote_data* %17, %struct.wiimote_data** %19, align 8
  %20 = load i32, i32* @S_IRUSR, align 4
  %21 = load %struct.wiimote_debug*, %struct.wiimote_debug** %4, align 8
  %22 = getelementptr inbounds %struct.wiimote_debug, %struct.wiimote_debug* %21, i32 0, i32 2
  %23 = load %struct.wiimote_data*, %struct.wiimote_data** %22, align 8
  %24 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.wiimote_debug*, %struct.wiimote_debug** %4, align 8
  %29 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %27, %struct.wiimote_debug* %28, i32* @wiidebug_eeprom_fops)
  %30 = load %struct.wiimote_debug*, %struct.wiimote_debug** %4, align 8
  %31 = getelementptr inbounds %struct.wiimote_debug, %struct.wiimote_debug* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load %struct.wiimote_debug*, %struct.wiimote_debug** %4, align 8
  %33 = getelementptr inbounds %struct.wiimote_debug, %struct.wiimote_debug* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %16
  br label %74

37:                                               ; preds = %16
  %38 = load i32, i32* @S_IRUSR, align 4
  %39 = load %struct.wiimote_debug*, %struct.wiimote_debug** %4, align 8
  %40 = getelementptr inbounds %struct.wiimote_debug, %struct.wiimote_debug* %39, i32 0, i32 2
  %41 = load %struct.wiimote_data*, %struct.wiimote_data** %40, align 8
  %42 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %41, i32 0, i32 2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.wiimote_debug*, %struct.wiimote_debug** %4, align 8
  %47 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %45, %struct.wiimote_debug* %46, i32* @wiidebug_drm_fops)
  %48 = load %struct.wiimote_debug*, %struct.wiimote_debug** %4, align 8
  %49 = getelementptr inbounds %struct.wiimote_debug, %struct.wiimote_debug* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load %struct.wiimote_debug*, %struct.wiimote_debug** %4, align 8
  %51 = getelementptr inbounds %struct.wiimote_debug, %struct.wiimote_debug* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %37
  br label %69

55:                                               ; preds = %37
  %56 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %57 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @spin_lock_irqsave(i32* %58, i64 %59)
  %61 = load %struct.wiimote_debug*, %struct.wiimote_debug** %4, align 8
  %62 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %63 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %62, i32 0, i32 1
  store %struct.wiimote_debug* %61, %struct.wiimote_debug** %63, align 8
  %64 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %65 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  store i32 0, i32* %2, align 4
  br label %78

69:                                               ; preds = %54
  %70 = load %struct.wiimote_debug*, %struct.wiimote_debug** %4, align 8
  %71 = getelementptr inbounds %struct.wiimote_debug, %struct.wiimote_debug* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @debugfs_remove(i8* %72)
  br label %74

74:                                               ; preds = %69, %36
  %75 = load %struct.wiimote_debug*, %struct.wiimote_debug** %4, align 8
  %76 = call i32 @kfree(%struct.wiimote_debug* %75)
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %74, %55, %13
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.wiimote_debug* @kzalloc(i32, i32) #1

declare dso_local i8* @debugfs_create_file(i8*, i32, i32, %struct.wiimote_debug*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @debugfs_remove(i8*) #1

declare dso_local i32 @kfree(%struct.wiimote_debug*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
