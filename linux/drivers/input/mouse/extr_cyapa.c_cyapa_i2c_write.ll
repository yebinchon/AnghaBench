; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa.c_cyapa_i2c_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa.c_cyapa_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyapa*, i8, i64, i8*)* @cyapa_i2c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_i2c_write(%struct.cyapa* %0, i8 signext %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cyapa*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca [32 x i8], align 16
  %12 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %6, align 8
  store i8 %1, i8* %7, align 1
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.cyapa*, %struct.cyapa** %6, align 8
  %14 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %13, i32 0, i32 0
  %15 = load %struct.i2c_client*, %struct.i2c_client** %14, align 8
  store %struct.i2c_client* %15, %struct.i2c_client** %10, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp ugt i64 %16, 31
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %49

21:                                               ; preds = %4
  %22 = load i8, i8* %7, align 1
  %23 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  store i8 %22, i8* %23, align 16
  %24 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 1
  %25 = load i8*, i8** %9, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @memcpy(i8* %24, i8* %25, i64 %26)
  %28 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %29 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %30 = load i64, i64* %8, align 8
  %31 = add i64 %30, 1
  %32 = call i32 @i2c_master_send(%struct.i2c_client* %28, i8* %29, i64 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %8, align 8
  %36 = add i64 %35, 1
  %37 = icmp ne i64 %34, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %21
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* %12, align 4
  br label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  br label %46

46:                                               ; preds = %43, %41
  %47 = phi i32 [ %42, %41 ], [ %45, %43 ]
  store i32 %47, i32* %5, align 4
  br label %49

48:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %46, %18
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
