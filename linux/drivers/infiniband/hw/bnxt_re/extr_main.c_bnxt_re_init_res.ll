; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_init_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_init_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_re_dev = type { i32, i32*, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@bnxt_re_cqn_handler = common dso_local global i32 0, align 4
@bnxt_re_srqn_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to enable NQ with rc = 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt_re_dev*)* @bnxt_re_init_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_re_init_res(%struct.bnxt_re_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt_re_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bnxt_re_dev* %0, %struct.bnxt_re_dev** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %9 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %8, i32 0, i32 4
  %10 = call i32 @bnxt_qplib_init_res(i32* %9)
  store i32 1, i32* %6, align 4
  br label %11

11:                                               ; preds = %55, %1
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %14 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %58

17:                                               ; preds = %11
  %18 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @bnxt_re_get_nqdb_offset(%struct.bnxt_re_dev* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %22 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %21, i32 0, i32 3
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %27 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %6, align 4
  %34 = sub nsw i32 %33, 1
  %35 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %36 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @bnxt_qplib_enable_nq(i32 %25, i32* %32, i32 %34, i32 %42, i32 %43, i32* @bnxt_re_cqn_handler, i32* @bnxt_re_srqn_handler)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %17
  %48 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %49 = call i32 @rdev_to_dev(%struct.bnxt_re_dev* %48)
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %59

52:                                               ; preds = %17
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %11

58:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %77

59:                                               ; preds = %47
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %72, %59
  %62 = load i32, i32* %6, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %61
  %65 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %66 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = call i32 @bnxt_qplib_disable_nq(i32* %70)
  br label %72

72:                                               ; preds = %64
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %6, align 4
  br label %61

75:                                               ; preds = %61
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %75, %58
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @bnxt_qplib_init_res(i32*) #1

declare dso_local i32 @bnxt_re_get_nqdb_offset(%struct.bnxt_re_dev*, i32) #1

declare dso_local i32 @bnxt_qplib_enable_nq(i32, i32*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @rdev_to_dev(%struct.bnxt_re_dev*) #1

declare dso_local i32 @bnxt_qplib_disable_nq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
