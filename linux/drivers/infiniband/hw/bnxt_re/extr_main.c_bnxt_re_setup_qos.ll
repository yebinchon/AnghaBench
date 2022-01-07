; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_setup_qos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_setup_qos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_re_dev = type { i64, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"no cos for p_mask %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"no tc for cos{%x, %x}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt_re_dev*)* @bnxt_re_setup_qos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_re_setup_qos(%struct.bnxt_re_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt_re_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bnxt_re_dev* %0, %struct.bnxt_re_dev** %3, align 8
  store i64 0, i64* %4, align 8
  %7 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %8 = call i64 @bnxt_re_get_priority_mask(%struct.bnxt_re_dev* %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %11 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %89

15:                                               ; preds = %1
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %18 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %20 = call i32 @bnxt_re_query_hwrm_pri2cos(%struct.bnxt_re_dev* %19, i32 0, i32* %5)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %15
  %24 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %25 = call i32 @rdev_to_dev(%struct.bnxt_re_dev* %24)
  %26 = load i64, i64* %4, align 8
  %27 = call i32 (i32, i8*, i64, ...) @dev_warn(i32 %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %89

29:                                               ; preds = %15
  %30 = load i64, i64* %4, align 8
  %31 = bitcast i32* %5 to i64*
  %32 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %33 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @bnxt_re_parse_cid_map(i64 %30, i64* %31, i32* %34)
  %36 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %37 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %36, i32 0, i32 1
  %38 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %39 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @bnxt_qplib_map_tc2cos(%struct.TYPE_2__* %37, i32* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %29
  %45 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %46 = call i32 @rdev_to_dev(%struct.bnxt_re_dev* %45)
  %47 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %48 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %54 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32, i8*, i64, ...) @dev_warn(i32 %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %52, i32 %57)
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %89

60:                                               ; preds = %29
  %61 = load i64, i64* %4, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %65 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %63, %60
  %70 = load i64, i64* %4, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %69
  %73 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %74 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %72, %63
  %79 = load i64, i64* %4, align 8
  %80 = icmp ne i64 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 1, i32 0
  %83 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %84 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 8
  %86 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %87 = call i32 @bnxt_re_update_gid(%struct.bnxt_re_dev* %86)
  br label %88

88:                                               ; preds = %78, %72, %69
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %88, %44, %23, %14
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i64 @bnxt_re_get_priority_mask(%struct.bnxt_re_dev*) #1

declare dso_local i32 @bnxt_re_query_hwrm_pri2cos(%struct.bnxt_re_dev*, i32, i32*) #1

declare dso_local i32 @dev_warn(i32, i8*, i64, ...) #1

declare dso_local i32 @rdev_to_dev(%struct.bnxt_re_dev*) #1

declare dso_local i32 @bnxt_re_parse_cid_map(i64, i64*, i32*) #1

declare dso_local i32 @bnxt_qplib_map_tc2cos(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @bnxt_re_update_gid(%struct.bnxt_re_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
