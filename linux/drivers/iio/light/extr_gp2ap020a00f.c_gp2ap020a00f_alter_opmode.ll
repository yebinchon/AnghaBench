; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_gp2ap020a00f.c_gp2ap020a00f_alter_opmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_gp2ap020a00f.c_gp2ap020a00f_alter_opmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gp2ap020a00f_data = type { i64 }

@GP2AP020A00F_OPMODE_ALS = common dso_local global i32 0, align 4
@GP2AP020A00F_OPMODE_PS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GP2AP020A00F_ADD_MODE = common dso_local global i32 0, align 4
@GP2AP020A00F_OPMODE_SHUTDOWN = common dso_local global i64 0, align 8
@GP2AP020A00F_OPMODE_ALS_AND_PS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gp2ap020a00f_data*, i32, i32)* @gp2ap020a00f_alter_opmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gp2ap020a00f_alter_opmode(%struct.gp2ap020a00f_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gp2ap020a00f_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gp2ap020a00f_data* %0, %struct.gp2ap020a00f_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @GP2AP020A00F_OPMODE_ALS, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @GP2AP020A00F_OPMODE_PS, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %59

19:                                               ; preds = %12, %3
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @GP2AP020A00F_ADD_MODE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %5, align 8
  %25 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @GP2AP020A00F_OPMODE_SHUTDOWN, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %8, align 4
  br label %34

31:                                               ; preds = %23
  %32 = load i64, i64* @GP2AP020A00F_OPMODE_ALS_AND_PS, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %31, %29
  br label %55

35:                                               ; preds = %19
  %36 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %5, align 8
  %37 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @GP2AP020A00F_OPMODE_ALS_AND_PS, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %35
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @GP2AP020A00F_OPMODE_ALS, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @GP2AP020A00F_OPMODE_PS, align 4
  br label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @GP2AP020A00F_OPMODE_ALS, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  store i32 %50, i32* %8, align 4
  br label %54

51:                                               ; preds = %35
  %52 = load i64, i64* @GP2AP020A00F_OPMODE_SHUTDOWN, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %51, %49
  br label %55

55:                                               ; preds = %54, %34
  %56 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %5, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @gp2ap020a00f_set_operation_mode(%struct.gp2ap020a00f_data* %56, i32 %57)
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %55, %16
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @gp2ap020a00f_set_operation_mode(%struct.gp2ap020a00f_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
