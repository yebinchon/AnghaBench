; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-arizona.c_arizona_extcon_get_micd_configs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-arizona.c_arizona_extcon_get_micd_configs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.arizona = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.arizona_micd_config* }
%struct.arizona_micd_config = type { i8*, i8*, i32 }

@.str = private unnamed_addr constant [17 x i8] c"wlf,micd-configs\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ARIZONA_ACCDET_SRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.arizona*)* @arizona_extcon_get_micd_configs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arizona_extcon_get_micd_configs(%struct.device* %0, %struct.arizona* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.arizona*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.arizona_micd_config*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.arizona* %1, %struct.arizona** %5, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i32 3, i32* %7, align 4
  %14 = load %struct.arizona*, %struct.arizona** %5, align 8
  %15 = getelementptr inbounds %struct.arizona, %struct.arizona* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @device_property_count_u32(i32 %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %113

21:                                               ; preds = %2
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8** @kcalloc(i32 %22, i32 8, i32 %23)
  store i8** %24, i8*** %13, align 8
  %25 = load i8**, i8*** %13, align 8
  %26 = icmp ne i8** %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %113

30:                                               ; preds = %21
  %31 = load %struct.arizona*, %struct.arizona** %5, align 8
  %32 = getelementptr inbounds %struct.arizona, %struct.arizona* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i8**, i8*** %13, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @device_property_read_u32_array(i32 %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8** %34, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %109

40:                                               ; preds = %30
  %41 = load i32, i32* %9, align 4
  %42 = sdiv i32 %41, 3
  store i32 %42, i32* %9, align 4
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.arizona_micd_config* @devm_kcalloc(%struct.device* %43, i32 %44, i32 24, i32 %45)
  store %struct.arizona_micd_config* %46, %struct.arizona_micd_config** %8, align 8
  %47 = load %struct.arizona_micd_config*, %struct.arizona_micd_config** %8, align 8
  %48 = icmp ne %struct.arizona_micd_config* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %10, align 4
  br label %109

52:                                               ; preds = %40
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %53

53:                                               ; preds = %97, %52
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %100

57:                                               ; preds = %53
  %58 = load i8**, i8*** %13, align 8
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %12, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8*, i8** %58, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* @ARIZONA_ACCDET_SRC, align 4
  br label %68

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %65
  %69 = phi i32 [ %66, %65 ], [ 0, %67 ]
  %70 = load %struct.arizona_micd_config*, %struct.arizona_micd_config** %8, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.arizona_micd_config, %struct.arizona_micd_config* %70, i64 %72
  %74 = getelementptr inbounds %struct.arizona_micd_config, %struct.arizona_micd_config* %73, i32 0, i32 2
  store i32 %69, i32* %74, align 8
  %75 = load i8**, i8*** %13, align 8
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %12, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i8*, i8** %75, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.arizona_micd_config*, %struct.arizona_micd_config** %8, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.arizona_micd_config, %struct.arizona_micd_config* %81, i64 %83
  %85 = getelementptr inbounds %struct.arizona_micd_config, %struct.arizona_micd_config* %84, i32 0, i32 1
  store i8* %80, i8** %85, align 8
  %86 = load i8**, i8*** %13, align 8
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %12, align 4
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i8*, i8** %86, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.arizona_micd_config*, %struct.arizona_micd_config** %8, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.arizona_micd_config, %struct.arizona_micd_config* %92, i64 %94
  %96 = getelementptr inbounds %struct.arizona_micd_config, %struct.arizona_micd_config* %95, i32 0, i32 0
  store i8* %91, i8** %96, align 8
  br label %97

97:                                               ; preds = %68
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  br label %53

100:                                              ; preds = %53
  %101 = load %struct.arizona_micd_config*, %struct.arizona_micd_config** %8, align 8
  %102 = load %struct.arizona*, %struct.arizona** %5, align 8
  %103 = getelementptr inbounds %struct.arizona, %struct.arizona* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  store %struct.arizona_micd_config* %101, %struct.arizona_micd_config** %104, align 8
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.arizona*, %struct.arizona** %5, align 8
  %107 = getelementptr inbounds %struct.arizona, %struct.arizona* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  store i32 %105, i32* %108, align 8
  br label %109

109:                                              ; preds = %100, %49, %39
  %110 = load i8**, i8*** %13, align 8
  %111 = call i32 @kfree(i8** %110)
  %112 = load i32, i32* %10, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %109, %27, %20
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @device_property_count_u32(i32, i8*) #1

declare dso_local i8** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @device_property_read_u32_array(i32, i8*, i8**, i32) #1

declare dso_local %struct.arizona_micd_config* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @kfree(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
