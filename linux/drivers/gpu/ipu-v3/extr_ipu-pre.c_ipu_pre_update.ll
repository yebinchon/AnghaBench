; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-pre.c_ipu_pre_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-pre.c_ipu_pre_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_pre = type { i32, i16, i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@IPU_PRE_NEXT_BUF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"timeout waiting for PRE safe window\0A\00", align 1
@IPU_PRE_STORE_ENG_STATUS = common dso_local global i64 0, align 8
@IPU_PRE_STORE_ENG_STATUS_STORE_BLOCK_Y_SHIFT = common dso_local global i16 0, align 2
@IPU_PRE_STORE_ENG_STATUS_STORE_BLOCK_Y_MASK = common dso_local global i16 0, align 2
@IPU_PRE_CTRL_SDW_UPDATE = common dso_local global i32 0, align 4
@IPU_PRE_CTRL_SET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipu_pre_update(%struct.ipu_pre* %0, i32 %1) #0 {
  %3 = alloca %struct.ipu_pre*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store %struct.ipu_pre* %0, %struct.ipu_pre** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i64, i64* @jiffies, align 8
  %9 = call i64 @msecs_to_jiffies(i32 5)
  %10 = add i64 %8, %9
  store i64 %10, i64* %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.ipu_pre*, %struct.ipu_pre** %3, align 8
  %13 = getelementptr inbounds %struct.ipu_pre, %struct.ipu_pre* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %76

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.ipu_pre*, %struct.ipu_pre** %3, align 8
  %20 = getelementptr inbounds %struct.ipu_pre, %struct.ipu_pre* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IPU_PRE_NEXT_BUF, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel(i32 %18, i64 %23)
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.ipu_pre*, %struct.ipu_pre** %3, align 8
  %27 = getelementptr inbounds %struct.ipu_pre, %struct.ipu_pre* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %66, %17
  %29 = load i64, i64* @jiffies, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i64 @time_after(i64 %29, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.ipu_pre*, %struct.ipu_pre** %3, align 8
  %35 = getelementptr inbounds %struct.ipu_pre, %struct.ipu_pre* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dev_warn(i32 %36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %76

38:                                               ; preds = %28
  %39 = load %struct.ipu_pre*, %struct.ipu_pre** %3, align 8
  %40 = getelementptr inbounds %struct.ipu_pre, %struct.ipu_pre* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IPU_PRE_STORE_ENG_STATUS, align 8
  %43 = add nsw i64 %41, %42
  %44 = call zeroext i16 @readl(i64 %43)
  store i16 %44, i16* %7, align 2
  %45 = load i16, i16* %7, align 2
  %46 = zext i16 %45 to i32
  %47 = load i16, i16* @IPU_PRE_STORE_ENG_STATUS_STORE_BLOCK_Y_SHIFT, align 2
  %48 = zext i16 %47 to i32
  %49 = ashr i32 %46, %48
  %50 = load i16, i16* @IPU_PRE_STORE_ENG_STATUS_STORE_BLOCK_Y_MASK, align 2
  %51 = zext i16 %50 to i32
  %52 = and i32 %49, %51
  %53 = trunc i32 %52 to i16
  store i16 %53, i16* %6, align 2
  br label %54

54:                                               ; preds = %38
  %55 = load i16, i16* %6, align 2
  %56 = zext i16 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %54
  %59 = load i16, i16* %6, align 2
  %60 = zext i16 %59 to i32
  %61 = load %struct.ipu_pre*, %struct.ipu_pre** %3, align 8
  %62 = getelementptr inbounds %struct.ipu_pre, %struct.ipu_pre* %61, i32 0, i32 1
  %63 = load i16, i16* %62, align 4
  %64 = zext i16 %63 to i32
  %65 = icmp sge i32 %60, %64
  br label %66

66:                                               ; preds = %58, %54
  %67 = phi i1 [ true, %54 ], [ %65, %58 ]
  br i1 %67, label %28, label %68

68:                                               ; preds = %66
  %69 = load i32, i32* @IPU_PRE_CTRL_SDW_UPDATE, align 4
  %70 = load %struct.ipu_pre*, %struct.ipu_pre** %3, align 8
  %71 = getelementptr inbounds %struct.ipu_pre, %struct.ipu_pre* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @IPU_PRE_CTRL_SET, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @writel(i32 %69, i64 %74)
  br label %76

76:                                               ; preds = %68, %33, %16
  ret void
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local zeroext i16 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
