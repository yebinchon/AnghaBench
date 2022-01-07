; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_macio_asic.c_macio_resource_quirks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_macio_asic.c_macio_resource_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.resource = type { i32, i32, i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"gc\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"radio\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"escc\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"ch-a\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"ch-b\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"media-bay\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"IDE\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"ATA\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"ide\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"ata\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.resource*, i32)* @macio_resource_quirks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macio_resource_quirks(%struct.device_node* %0, %struct.resource* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store %struct.resource* %1, %struct.resource** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.resource*, %struct.resource** %6, align 8
  %9 = getelementptr inbounds %struct.resource, %struct.resource* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @IORESOURCE_MEM, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %131

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  %19 = load %struct.device_node*, %struct.device_node** %5, align 8
  %20 = call i64 @of_node_name_eq(%struct.device_node* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load %struct.resource*, %struct.resource** %6, align 8
  %24 = getelementptr inbounds %struct.resource, %struct.resource* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 131071
  %27 = load %struct.resource*, %struct.resource** %6, align 8
  %28 = getelementptr inbounds %struct.resource, %struct.resource* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %22, %18, %15
  %30 = load i32, i32* %7, align 4
  %31 = icmp sge i32 %30, 2
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load %struct.device_node*, %struct.device_node** %5, align 8
  %34 = call i64 @of_node_name_eq(%struct.device_node* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 1, i32* %4, align 4
  br label %131

37:                                               ; preds = %32, %29
  %38 = load %struct.resource*, %struct.resource** %6, align 8
  %39 = getelementptr inbounds %struct.resource, %struct.resource* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 126976
  %42 = icmp eq i32 %41, 32768
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load %struct.resource*, %struct.resource** %6, align 8
  %45 = getelementptr inbounds %struct.resource, %struct.resource* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 255
  %48 = load %struct.resource*, %struct.resource** %6, align 8
  %49 = getelementptr inbounds %struct.resource, %struct.resource* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %43, %37
  %51 = load %struct.device_node*, %struct.device_node** %5, align 8
  %52 = call i64 @of_node_name_eq(%struct.device_node* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 1, i32* %4, align 4
  br label %131

55:                                               ; preds = %50
  %56 = load i32, i32* %7, align 4
  %57 = icmp sge i32 %56, 3
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load %struct.device_node*, %struct.device_node** %5, align 8
  %60 = call i64 @of_node_name_eq(%struct.device_node* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load %struct.device_node*, %struct.device_node** %5, align 8
  %64 = call i64 @of_node_name_eq(%struct.device_node* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62, %58
  store i32 1, i32* %4, align 4
  br label %131

67:                                               ; preds = %62, %55
  %68 = load i32, i32* %7, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load %struct.device_node*, %struct.device_node** %5, align 8
  %72 = call i64 @of_node_name_eq(%struct.device_node* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i32 1, i32* %4, align 4
  br label %131

75:                                               ; preds = %70, %67
  %76 = load %struct.device_node*, %struct.device_node** %5, align 8
  %77 = call i64 @of_node_name_eq(%struct.device_node* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %91, label %79

79:                                               ; preds = %75
  %80 = load %struct.device_node*, %struct.device_node** %5, align 8
  %81 = call i64 @of_node_name_eq(%struct.device_node* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %79
  %84 = load %struct.device_node*, %struct.device_node** %5, align 8
  %85 = call i64 @of_node_is_type(%struct.device_node* %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = load %struct.device_node*, %struct.device_node** %5, align 8
  %89 = call i64 @of_node_is_type(%struct.device_node* %88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %130

91:                                               ; preds = %87, %83, %79, %75
  %92 = load i32, i32* %7, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %110

94:                                               ; preds = %91
  %95 = load %struct.resource*, %struct.resource** %6, align 8
  %96 = getelementptr inbounds %struct.resource, %struct.resource* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.resource*, %struct.resource** %6, align 8
  %99 = getelementptr inbounds %struct.resource, %struct.resource* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 %97, %100
  %102 = icmp sgt i32 %101, 4095
  br i1 %102, label %103, label %110

103:                                              ; preds = %94
  %104 = load %struct.resource*, %struct.resource** %6, align 8
  %105 = getelementptr inbounds %struct.resource, %struct.resource* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 4095
  %108 = load %struct.resource*, %struct.resource** %6, align 8
  %109 = getelementptr inbounds %struct.resource, %struct.resource* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  br label %110

110:                                              ; preds = %103, %94, %91
  %111 = load i32, i32* %7, align 4
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %129

113:                                              ; preds = %110
  %114 = load %struct.resource*, %struct.resource** %6, align 8
  %115 = getelementptr inbounds %struct.resource, %struct.resource* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.resource*, %struct.resource** %6, align 8
  %118 = getelementptr inbounds %struct.resource, %struct.resource* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 %116, %119
  %121 = icmp sgt i32 %120, 255
  br i1 %121, label %122, label %129

122:                                              ; preds = %113
  %123 = load %struct.resource*, %struct.resource** %6, align 8
  %124 = getelementptr inbounds %struct.resource, %struct.resource* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 255
  %127 = load %struct.resource*, %struct.resource** %6, align 8
  %128 = getelementptr inbounds %struct.resource, %struct.resource* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  br label %129

129:                                              ; preds = %122, %113, %110
  br label %130

130:                                              ; preds = %129, %87
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %130, %74, %66, %54, %36, %14
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i64 @of_node_name_eq(%struct.device_node*, i8*) #1

declare dso_local i64 @of_node_is_type(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
