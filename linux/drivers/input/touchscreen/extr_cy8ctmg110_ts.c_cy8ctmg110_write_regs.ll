; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_cy8ctmg110_ts.c_cy8ctmg110_write_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_cy8ctmg110_ts.c_cy8ctmg110_write_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cy8ctmg110 = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"i2c write data cmd failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cy8ctmg110*, i8, i8, i8*)* @cy8ctmg110_write_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cy8ctmg110_write_regs(%struct.cy8ctmg110* %0, i8 zeroext %1, i8 zeroext %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cy8ctmg110*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [6 x i8], align 1
  store %struct.cy8ctmg110* %0, %struct.cy8ctmg110** %6, align 8
  store i8 %1, i8* %7, align 1
  store i8 %2, i8* %8, align 1
  store i8* %3, i8** %9, align 8
  %13 = load %struct.cy8ctmg110*, %struct.cy8ctmg110** %6, align 8
  %14 = getelementptr inbounds %struct.cy8ctmg110, %struct.cy8ctmg110* %13, i32 0, i32 0
  %15 = load %struct.i2c_client*, %struct.i2c_client** %14, align 8
  store %struct.i2c_client* %15, %struct.i2c_client** %10, align 8
  %16 = load i8, i8* %8, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp sgt i32 %17, 5
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load i8, i8* %7, align 1
  %22 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8*, i8** %9, align 8
  %26 = load i8, i8* %8, align 1
  %27 = call i32 @memcpy(i8* %24, i8* %25, i8 zeroext %26)
  %28 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %29 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  %30 = load i8, i8* %8, align 1
  %31 = zext i8 %30 to i32
  %32 = add nsw i32 %31, 1
  %33 = trunc i32 %32 to i8
  %34 = call i32 @i2c_master_send(%struct.i2c_client* %28, i8* %29, i8 zeroext %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i8, i8* %8, align 1
  %37 = zext i8 %36 to i32
  %38 = add nsw i32 %37, 1
  %39 = icmp ne i32 %35, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %4
  %41 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 0
  %43 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %11, align 4
  br label %51

48:                                               ; preds = %40
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  br label %51

51:                                               ; preds = %48, %46
  %52 = phi i32 [ %47, %46 ], [ %50, %48 ]
  store i32 %52, i32* %5, align 4
  br label %54

53:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %53, %51
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i8 zeroext) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i8*, i8 zeroext) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
