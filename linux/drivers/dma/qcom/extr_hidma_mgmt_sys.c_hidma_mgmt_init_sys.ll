; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_mgmt_sys.c_hidma_mgmt_init_sys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_mgmt_sys.c_hidma_mgmt_init_sys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.hidma_mgmt_dev = type { i32, i8**, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.kobject }
%struct.kobject = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"chanops\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"chan%d\00", align 1
@hidma_mgmt_files = common dso_local global %struct.TYPE_6__* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"priority\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@S_IWUGO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"weight\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hidma_mgmt_init_sys(%struct.hidma_mgmt_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hidma_mgmt_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.kobject*, align 8
  %8 = alloca [20 x i8], align 16
  store %struct.hidma_mgmt_dev* %0, %struct.hidma_mgmt_dev** %3, align 8
  %9 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %10 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = mul i64 8, %12
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %6, align 4
  %15 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %16 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %15, i32 0, i32 2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8** @devm_kmalloc(%struct.TYPE_7__* %18, i32 %19, i32 %20)
  %22 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %23 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %22, i32 0, i32 1
  store i8** %21, i8*** %23, align 8
  %24 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %25 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %24, i32 0, i32 1
  %26 = load i8**, i8*** %25, align 8
  %27 = icmp ne i8** %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %156

31:                                               ; preds = %1
  %32 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %33 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %32, i32 0, i32 2
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = call i8* @kobject_create_and_add(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.kobject* %36)
  %38 = bitcast i8* %37 to %struct.kobject*
  store %struct.kobject* %38, %struct.kobject** %7, align 8
  %39 = load %struct.kobject*, %struct.kobject** %7, align 8
  %40 = icmp ne %struct.kobject* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %31
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %156

44:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %76, %44
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %48 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ult i32 %46, %49
  br i1 %50, label %51, label %79

51:                                               ; preds = %45
  %52 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @snprintf(i8* %52, i32 20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %56 = load %struct.kobject*, %struct.kobject** %7, align 8
  %57 = call i8* @kobject_create_and_add(i8* %55, %struct.kobject* %56)
  %58 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %59 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %58, i32 0, i32 1
  %60 = load i8**, i8*** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  store i8* %57, i8** %63, align 8
  %64 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %65 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %64, i32 0, i32 1
  %66 = load i8**, i8*** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %51
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %156

75:                                               ; preds = %51
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %4, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %45

79:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %105, %79
  %81 = load i32, i32* %4, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hidma_mgmt_files, align 8
  %83 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %82)
  %84 = icmp ult i32 %81, %83
  br i1 %84, label %85, label %108

85:                                               ; preds = %80
  %86 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hidma_mgmt_files, align 8
  %88 = load i32, i32* %4, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hidma_mgmt_files, align 8
  %94 = load i32, i32* %4, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @create_sysfs_entry(%struct.hidma_mgmt_dev* %86, i32 %92, i32 %98)
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %85
  %103 = load i32, i32* %5, align 4
  store i32 %103, i32* %2, align 4
  br label %156

104:                                              ; preds = %85
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %4, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %4, align 4
  br label %80

108:                                              ; preds = %80
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %152, %108
  %110 = load i32, i32* %4, align 4
  %111 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %112 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp ult i32 %110, %113
  br i1 %114, label %115, label %155

115:                                              ; preds = %109
  %116 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %117 = load i32, i32* @S_IRUGO, align 4
  %118 = load i32, i32* @S_IWUGO, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* %4, align 4
  %121 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %122 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %121, i32 0, i32 1
  %123 = load i8**, i8*** %122, align 8
  %124 = load i32, i32* %4, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %123, i64 %125
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @create_sysfs_entry_channel(%struct.hidma_mgmt_dev* %116, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %119, i32 %120, i8* %127)
  store i32 %128, i32* %5, align 4
  %129 = load i32, i32* %5, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %115
  %132 = load i32, i32* %5, align 4
  store i32 %132, i32* %2, align 4
  br label %156

133:                                              ; preds = %115
  %134 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %135 = load i32, i32* @S_IRUGO, align 4
  %136 = load i32, i32* @S_IWUGO, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* %4, align 4
  %139 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %140 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %139, i32 0, i32 1
  %141 = load i8**, i8*** %140, align 8
  %142 = load i32, i32* %4, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %141, i64 %143
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 @create_sysfs_entry_channel(%struct.hidma_mgmt_dev* %134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %137, i32 %138, i8* %145)
  store i32 %146, i32* %5, align 4
  %147 = load i32, i32* %5, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %133
  %150 = load i32, i32* %5, align 4
  store i32 %150, i32* %2, align 4
  br label %156

151:                                              ; preds = %133
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %4, align 4
  %154 = add i32 %153, 1
  store i32 %154, i32* %4, align 4
  br label %109

155:                                              ; preds = %109
  store i32 0, i32* %2, align 4
  br label %156

156:                                              ; preds = %155, %149, %131, %102, %72, %41, %28
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i8** @devm_kmalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i8* @kobject_create_and_add(i8*, %struct.kobject*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @create_sysfs_entry(%struct.hidma_mgmt_dev*, i32, i32) #1

declare dso_local i32 @create_sysfs_entry_channel(%struct.hidma_mgmt_dev*, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
