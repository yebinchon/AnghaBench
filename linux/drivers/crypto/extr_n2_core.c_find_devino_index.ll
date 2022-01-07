; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_find_devino_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_find_devino_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.spu_mdesc_info = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"interrupts\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.spu_mdesc_info*, i64)* @find_devino_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_devino_index(%struct.platform_device* %0, %struct.spu_mdesc_info* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.spu_mdesc_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store %struct.spu_mdesc_info* %1, %struct.spu_mdesc_info** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %30, %3
  %12 = load i32, i32* %10, align 4
  %13 = load %struct.spu_mdesc_info*, %struct.spu_mdesc_info** %6, align 8
  %14 = getelementptr inbounds %struct.spu_mdesc_info, %struct.spu_mdesc_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %11
  %18 = load %struct.spu_mdesc_info*, %struct.spu_mdesc_info** %6, align 8
  %19 = getelementptr inbounds %struct.spu_mdesc_info, %struct.spu_mdesc_info* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %33

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %10, align 4
  br label %11

33:                                               ; preds = %28, %11
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.spu_mdesc_info*, %struct.spu_mdesc_info** %6, align 8
  %36 = getelementptr inbounds %struct.spu_mdesc_info, %struct.spu_mdesc_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %86

42:                                               ; preds = %33
  %43 = load %struct.spu_mdesc_info*, %struct.spu_mdesc_info** %6, align 8
  %44 = getelementptr inbounds %struct.spu_mdesc_info, %struct.spu_mdesc_info* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %9, align 4
  %51 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32* @of_get_property(i32 %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32* %55, i32** %8, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %42
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %86

61:                                               ; preds = %42
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %80, %61
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %63, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %62
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %4, align 4
  br label %86

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %62

83:                                               ; preds = %62
  %84 = load i32, i32* @ENODEV, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %83, %77, %58, %39
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32* @of_get_property(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
