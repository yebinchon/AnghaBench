; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_bo.c_vc4_get_user_label.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_bo.c_vc4_get_user_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc4_dev = type { i32, %struct.vc4_label* }
%struct.vc4_label = type { i8*, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc4_dev*, i8*)* @vc4_get_user_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_get_user_label(%struct.vc4_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vc4_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vc4_label*, align 8
  store %struct.vc4_dev* %0, %struct.vc4_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %46, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %13 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %49

16:                                               ; preds = %10
  %17 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %18 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %17, i32 0, i32 1
  %19 = load %struct.vc4_label*, %struct.vc4_label** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.vc4_label, %struct.vc4_label* %19, i64 %21
  %23 = getelementptr inbounds %struct.vc4_label, %struct.vc4_label* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %16
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %7, align 4
  br label %45

28:                                               ; preds = %16
  %29 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %30 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %29, i32 0, i32 1
  %31 = load %struct.vc4_label*, %struct.vc4_label** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.vc4_label, %struct.vc4_label* %31, i64 %33
  %35 = getelementptr inbounds %struct.vc4_label, %struct.vc4_label* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = call i64 @strcmp(i8* %36, i8* %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %28
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @kfree(i8* %41)
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %125

44:                                               ; preds = %28
  br label %45

45:                                               ; preds = %44, %26
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %10

49:                                               ; preds = %10
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, -1
  br i1 %51, label %52, label %73

52:                                               ; preds = %49
  %53 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %54 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %53, i32 0, i32 1
  %55 = load %struct.vc4_label*, %struct.vc4_label** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.vc4_label, %struct.vc4_label* %55, i64 %57
  %59 = getelementptr inbounds %struct.vc4_label, %struct.vc4_label* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @WARN_ON(i32 %62)
  %64 = load i8*, i8** %5, align 8
  %65 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %66 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %65, i32 0, i32 1
  %67 = load %struct.vc4_label*, %struct.vc4_label** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.vc4_label, %struct.vc4_label* %67, i64 %69
  %71 = getelementptr inbounds %struct.vc4_label, %struct.vc4_label* %70, i32 0, i32 0
  store i8* %64, i8** %71, align 8
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %3, align 4
  br label %125

73:                                               ; preds = %49
  %74 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %75 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  %78 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %79 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %78, i32 0, i32 1
  %80 = load %struct.vc4_label*, %struct.vc4_label** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 24
  %84 = trunc i64 %83 to i32
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call %struct.vc4_label* @krealloc(%struct.vc4_label* %80, i32 %84, i32 %85)
  store %struct.vc4_label* %86, %struct.vc4_label** %9, align 8
  %87 = load %struct.vc4_label*, %struct.vc4_label** %9, align 8
  %88 = icmp ne %struct.vc4_label* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %73
  %90 = load i8*, i8** %5, align 8
  %91 = call i32 @kfree(i8* %90)
  store i32 -1, i32* %3, align 4
  br label %125

92:                                               ; preds = %73
  %93 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %94 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %7, align 4
  %96 = load %struct.vc4_label*, %struct.vc4_label** %9, align 8
  %97 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %98 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %97, i32 0, i32 1
  store %struct.vc4_label* %96, %struct.vc4_label** %98, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %101 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load i8*, i8** %5, align 8
  %103 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %104 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %103, i32 0, i32 1
  %105 = load %struct.vc4_label*, %struct.vc4_label** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.vc4_label, %struct.vc4_label* %105, i64 %107
  %109 = getelementptr inbounds %struct.vc4_label, %struct.vc4_label* %108, i32 0, i32 0
  store i8* %102, i8** %109, align 8
  %110 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %111 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %110, i32 0, i32 1
  %112 = load %struct.vc4_label*, %struct.vc4_label** %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.vc4_label, %struct.vc4_label* %112, i64 %114
  %116 = getelementptr inbounds %struct.vc4_label, %struct.vc4_label* %115, i32 0, i32 1
  store i64 0, i64* %116, align 8
  %117 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %118 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %117, i32 0, i32 1
  %119 = load %struct.vc4_label*, %struct.vc4_label** %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.vc4_label, %struct.vc4_label* %119, i64 %121
  %123 = getelementptr inbounds %struct.vc4_label, %struct.vc4_label* %122, i32 0, i32 2
  store i64 0, i64* %123, align 8
  %124 = load i32, i32* %7, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %92, %89, %52, %40
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.vc4_label* @krealloc(%struct.vc4_label*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
