; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_write_blk_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_write_blk_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qup_i2c_dev = type { i64, %struct.qup_i2c_block }
%struct.qup_i2c_block = type { i32, i32, i64 }

@QUP_OUT_FIFO_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qup_i2c_dev*, i32**, i32*)* @qup_i2c_write_blk_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qup_i2c_write_blk_data(%struct.qup_i2c_dev* %0, i32** %1, i32* %2) #0 {
  %4 = alloca %struct.qup_i2c_dev*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.qup_i2c_block*, align 8
  %8 = alloca i32, align 4
  store %struct.qup_i2c_dev* %0, %struct.qup_i2c_dev** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %10 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %9, i32 0, i32 1
  store %struct.qup_i2c_block* %10, %struct.qup_i2c_block** %7, align 8
  %11 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %7, align 8
  %12 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  br label %14

14:                                               ; preds = %55, %3
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %7, align 8
  %20 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %18, %14
  %24 = phi i1 [ false, %14 ], [ %22, %18 ]
  br i1 %24, label %25, label %63

25:                                               ; preds = %23
  %26 = load i32**, i32*** %5, align 8
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %26, align 8
  %29 = load i32, i32* %27, align 4
  %30 = load i32, i32* %8, align 4
  %31 = mul i32 %30, 8
  %32 = shl i32 %29, %31
  %33 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %7, align 8
  %34 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %39, label %51

39:                                               ; preds = %25
  %40 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %7, align 8
  %41 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %44 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @QUP_OUT_FIFO_BASE, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel(i32 %42, i64 %47)
  %49 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %7, align 8
  %50 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %49, i32 0, i32 1
  store i32 0, i32* %50, align 4
  store i32 0, i32* %8, align 4
  br label %54

51:                                               ; preds = %25
  %52 = load i32, i32* %8, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %51, %39
  br label %55

55:                                               ; preds = %54
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %56, align 4
  %58 = add i32 %57, -1
  store i32 %58, i32* %56, align 4
  %59 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %7, align 8
  %60 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, -1
  store i64 %62, i64* %60, align 8
  br label %14

63:                                               ; preds = %23
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.qup_i2c_block*, %struct.qup_i2c_block** %7, align 8
  %66 = getelementptr inbounds %struct.qup_i2c_block, %struct.qup_i2c_block* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
