; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_edt-ft5x06.c_edt_ft5x06_register_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_edt-ft5x06.c_edt_ft5x06_register_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edt_ft5x06_ts_data = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.edt_ft5x06_ts_data*, i32, i32)* @edt_ft5x06_register_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edt_ft5x06_register_write(%struct.edt_ft5x06_ts_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.edt_ft5x06_ts_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  store %struct.edt_ft5x06_ts_data* %0, %struct.edt_ft5x06_ts_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %5, align 8
  %10 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %59 [
    i32 132, label %12
    i32 131, label %49
    i32 130, label %49
    i32 129, label %49
    i32 128, label %49
  ]

12:                                               ; preds = %3
  %13 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %5, align 8
  %14 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 243, i32 252
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %18, i32* %19, align 16
  %20 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %5, align 8
  %21 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %12
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, 127
  br label %30

27:                                               ; preds = %12
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, 63
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi i32 [ %26, %24 ], [ %29, %27 ]
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %7, align 4
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 %33, i32* %34, align 8
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %36 = load i32, i32* %35, align 16
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = xor i32 %36, %38
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %41 = load i32, i32* %40, align 8
  %42 = xor i32 %39, %41
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 %42, i32* %43, align 4
  %44 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %5, align 8
  %45 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %48 = call i32 @edt_ft5x06_ts_readwrite(i32 %46, i32 4, i32* %47, i32 0, i32* null)
  store i32 %48, i32* %4, align 4
  br label %62

49:                                               ; preds = %3, %3, %3, %3
  %50 = load i32, i32* %6, align 4
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %50, i32* %51, align 16
  %52 = load i32, i32* %7, align 4
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %52, i32* %53, align 4
  %54 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %5, align 8
  %55 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %58 = call i32 @edt_ft5x06_ts_readwrite(i32 %56, i32 2, i32* %57, i32 0, i32* null)
  store i32 %58, i32* %4, align 4
  br label %62

59:                                               ; preds = %3
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %59, %49, %30
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @edt_ft5x06_ts_readwrite(i32, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
