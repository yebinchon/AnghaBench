; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-core.c_fsi_slave_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-core.c_fsi_slave_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_slave = type { i32, i32, i32 }

@slave_retries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsi_slave_write(%struct.fsi_slave* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsi_slave*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.fsi_slave* %0, %struct.fsi_slave** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.fsi_slave*, %struct.fsi_slave** %6, align 8
  %15 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load %struct.fsi_slave*, %struct.fsi_slave** %6, align 8
  %18 = call i32 @fsi_slave_calc_addr(%struct.fsi_slave* %17, i32* %7, i32* %10)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %5, align 4
  br label %57

23:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %24

24:                                               ; preds = %52, %23
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* @slave_retries, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %55

28:                                               ; preds = %24
  %29 = load %struct.fsi_slave*, %struct.fsi_slave** %6, align 8
  %30 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.fsi_slave*, %struct.fsi_slave** %6, align 8
  %33 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @fsi_master_write(i32 %31, i32 %34, i32 %35, i32 %36, i8* %37, i64 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %28
  br label %55

43:                                               ; preds = %28
  %44 = load %struct.fsi_slave*, %struct.fsi_slave** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @fsi_slave_handle_error(%struct.fsi_slave* %44, i32 1, i32 %45, i64 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %55

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %13, align 4
  br label %24

55:                                               ; preds = %50, %42, %24
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %55, %21
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @fsi_slave_calc_addr(%struct.fsi_slave*, i32*, i32*) #1

declare dso_local i32 @fsi_master_write(i32, i32, i32, i32, i8*, i64) #1

declare dso_local i32 @fsi_slave_handle_error(%struct.fsi_slave*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
