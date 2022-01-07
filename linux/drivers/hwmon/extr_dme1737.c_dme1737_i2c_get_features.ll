; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_dme1737.c_dme1737_i2c_get_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_dme1737.c_dme1737_i2c_get_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dme1737_data = type { i32 }

@force_id = common dso_local global i32 0, align 4
@DME1737_ID_1 = common dso_local global i32 0, align 4
@DME1737_ID_2 = common dso_local global i32 0, align 4
@SCH5027_ID = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.dme1737_data*)* @dme1737_i2c_get_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dme1737_i2c_get_features(i32 %0, %struct.dme1737_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dme1737_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.dme1737_data* %1, %struct.dme1737_data** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @dme1737_sio_enter(i32 %8)
  %10 = load i32, i32* @force_id, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @force_id, align 4
  br label %17

14:                                               ; preds = %2
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @dme1737_sio_inb(i32 %15, i32 32)
  br label %17

17:                                               ; preds = %14, %12
  %18 = phi i32 [ %13, %12 ], [ %16, %14 ]
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @DME1737_ID_1, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %33, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @DME1737_ID_2, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @SCH5027_ID, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %96

33:                                               ; preds = %26, %22, %17
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @dme1737_sio_outb(i32 %34, i32 7, i32 10)
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @dme1737_sio_inb(i32 %36, i32 96)
  %38 = shl i32 %37, 8
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @dme1737_sio_inb(i32 %39, i32 97)
  %41 = or i32 %38, %40
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %33
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %96

47:                                               ; preds = %33
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 67
  %50 = call i32 @inb(i32 %49)
  %51 = and i32 %50, 12
  %52 = icmp eq i32 %51, 8
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = call i32 @HAS_FAN(i32 5)
  %55 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %56 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %53, %47
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 68
  %62 = call i32 @inb(i32 %61)
  %63 = and i32 %62, 12
  %64 = icmp eq i32 %63, 8
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = call i32 @HAS_PWM(i32 5)
  %67 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %68 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %65, %59
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 69
  %74 = call i32 @inb(i32 %73)
  %75 = and i32 %74, 12
  %76 = icmp eq i32 %75, 8
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = call i32 @HAS_FAN(i32 4)
  %79 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %80 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %77, %71
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 70
  %86 = call i32 @inb(i32 %85)
  %87 = and i32 %86, 12
  %88 = icmp eq i32 %87, 8
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = call i32 @HAS_PWM(i32 4)
  %91 = load %struct.dme1737_data*, %struct.dme1737_data** %4, align 8
  %92 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %89, %83
  br label %96

96:                                               ; preds = %95, %44, %30
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @dme1737_sio_exit(i32 %97)
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @dme1737_sio_enter(i32) #1

declare dso_local i32 @dme1737_sio_inb(i32, i32) #1

declare dso_local i32 @dme1737_sio_outb(i32, i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @HAS_FAN(i32) #1

declare dso_local i32 @HAS_PWM(i32) #1

declare dso_local i32 @dme1737_sio_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
