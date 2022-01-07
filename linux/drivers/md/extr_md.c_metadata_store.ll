; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_metadata_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_metadata_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.mddev = type { i32, i32, i32, i32, i8*, i32 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"external:\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@super_types = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, i8*, i64)* @metadata_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @metadata_store(%struct.mddev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mddev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.mddev* %0, %struct.mddev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.mddev*, %struct.mddev** %5, align 8
  %14 = call i32 @mddev_lock(%struct.mddev* %13)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %4, align 4
  br label %174

19:                                               ; preds = %3
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %11, align 4
  %22 = load %struct.mddev*, %struct.mddev** %5, align 8
  %23 = getelementptr inbounds %struct.mddev, %struct.mddev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 @strncmp(i8* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 9)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %38

31:                                               ; preds = %26, %19
  %32 = load %struct.mddev*, %struct.mddev** %5, align 8
  %33 = getelementptr inbounds %struct.mddev, %struct.mddev* %32, i32 0, i32 5
  %34 = call i32 @list_empty(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %162

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %30
  store i32 0, i32* %11, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = call i64 @cmd_match(i8* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load %struct.mddev*, %struct.mddev** %5, align 8
  %44 = getelementptr inbounds %struct.mddev, %struct.mddev* %43, i32 0, i32 1
  store i32 0, i32* %44, align 4
  %45 = load %struct.mddev*, %struct.mddev** %5, align 8
  %46 = getelementptr inbounds %struct.mddev, %struct.mddev* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  %47 = load %struct.mddev*, %struct.mddev** %5, align 8
  %48 = getelementptr inbounds %struct.mddev, %struct.mddev* %47, i32 0, i32 2
  store i32 0, i32* %48, align 8
  %49 = load %struct.mddev*, %struct.mddev** %5, align 8
  %50 = getelementptr inbounds %struct.mddev, %struct.mddev* %49, i32 0, i32 3
  store i32 90, i32* %50, align 4
  br label %162

51:                                               ; preds = %38
  %52 = load i8*, i8** %6, align 8
  %53 = call i64 @strncmp(i8* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 9)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %102

55:                                               ; preds = %51
  %56 = load i64, i64* %7, align 8
  %57 = sub i64 %56, 9
  store i64 %57, i64* %12, align 8
  %58 = load i64, i64* %12, align 8
  %59 = icmp uge i64 %58, 8
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i64 7, i64* %12, align 8
  br label %61

61:                                               ; preds = %60, %55
  %62 = load %struct.mddev*, %struct.mddev** %5, align 8
  %63 = getelementptr inbounds %struct.mddev, %struct.mddev* %62, i32 0, i32 4
  %64 = load i8*, i8** %63, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 9
  %67 = load i64, i64* %12, align 8
  %68 = call i32 @strncpy(i8* %64, i8* %66, i64 %67)
  %69 = load %struct.mddev*, %struct.mddev** %5, align 8
  %70 = getelementptr inbounds %struct.mddev, %struct.mddev* %69, i32 0, i32 4
  %71 = load i8*, i8** %70, align 8
  %72 = load i64, i64* %12, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8 0, i8* %73, align 1
  %74 = load i64, i64* %12, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %93

76:                                               ; preds = %61
  %77 = load %struct.mddev*, %struct.mddev** %5, align 8
  %78 = getelementptr inbounds %struct.mddev, %struct.mddev* %77, i32 0, i32 4
  %79 = load i8*, i8** %78, align 8
  %80 = load i64, i64* %12, align 8
  %81 = sub i64 %80, 1
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 10
  br i1 %85, label %86, label %93

86:                                               ; preds = %76
  %87 = load %struct.mddev*, %struct.mddev** %5, align 8
  %88 = getelementptr inbounds %struct.mddev, %struct.mddev* %87, i32 0, i32 4
  %89 = load i8*, i8** %88, align 8
  %90 = load i64, i64* %12, align 8
  %91 = add i64 %90, -1
  store i64 %91, i64* %12, align 8
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  store i8 0, i8* %92, align 1
  br label %93

93:                                               ; preds = %86, %76, %61
  %94 = load %struct.mddev*, %struct.mddev** %5, align 8
  %95 = getelementptr inbounds %struct.mddev, %struct.mddev* %94, i32 0, i32 1
  store i32 0, i32* %95, align 4
  %96 = load %struct.mddev*, %struct.mddev** %5, align 8
  %97 = getelementptr inbounds %struct.mddev, %struct.mddev* %96, i32 0, i32 0
  store i32 1, i32* %97, align 8
  %98 = load %struct.mddev*, %struct.mddev** %5, align 8
  %99 = getelementptr inbounds %struct.mddev, %struct.mddev* %98, i32 0, i32 2
  store i32 0, i32* %99, align 8
  %100 = load %struct.mddev*, %struct.mddev** %5, align 8
  %101 = getelementptr inbounds %struct.mddev, %struct.mddev* %100, i32 0, i32 3
  store i32 90, i32* %101, align 4
  br label %162

102:                                              ; preds = %51
  %103 = load i8*, i8** %6, align 8
  %104 = call i32 @simple_strtoul(i8* %103, i8** %10, i32 10)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %11, align 4
  %107 = load i8*, i8** %10, align 8
  %108 = load i8*, i8** %6, align 8
  %109 = icmp eq i8* %107, %108
  br i1 %109, label %115, label %110

110:                                              ; preds = %102
  %111 = load i8*, i8** %10, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp ne i32 %113, 46
  br i1 %114, label %115, label %116

115:                                              ; preds = %110, %102
  br label %162

116:                                              ; preds = %110
  %117 = load i8*, i8** %10, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 1
  store i8* %118, i8** %6, align 8
  %119 = load i8*, i8** %6, align 8
  %120 = call i32 @simple_strtoul(i8* %119, i8** %10, i32 10)
  store i32 %120, i32* %9, align 4
  %121 = load i8*, i8** %10, align 8
  %122 = load i8*, i8** %6, align 8
  %123 = icmp eq i8* %121, %122
  br i1 %123, label %134, label %124

124:                                              ; preds = %116
  %125 = load i8*, i8** %10, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %124
  %130 = load i8*, i8** %10, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp ne i32 %132, 10
  br i1 %133, label %134, label %135

134:                                              ; preds = %129, %116
  br label %162

135:                                              ; preds = %129, %124
  %136 = load i32, i32* @ENOENT, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %11, align 4
  %138 = load i32, i32* %8, align 4
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** @super_types, align 8
  %140 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %139)
  %141 = icmp sge i32 %138, %140
  br i1 %141, label %150, label %142

142:                                              ; preds = %135
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** @super_types, align 8
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = icmp eq i32* %148, null
  br i1 %149, label %150, label %151

150:                                              ; preds = %142, %135
  br label %162

151:                                              ; preds = %142
  %152 = load i32, i32* %8, align 4
  %153 = load %struct.mddev*, %struct.mddev** %5, align 8
  %154 = getelementptr inbounds %struct.mddev, %struct.mddev* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 8
  %155 = load i32, i32* %9, align 4
  %156 = load %struct.mddev*, %struct.mddev** %5, align 8
  %157 = getelementptr inbounds %struct.mddev, %struct.mddev* %156, i32 0, i32 3
  store i32 %155, i32* %157, align 4
  %158 = load %struct.mddev*, %struct.mddev** %5, align 8
  %159 = getelementptr inbounds %struct.mddev, %struct.mddev* %158, i32 0, i32 1
  store i32 1, i32* %159, align 4
  %160 = load %struct.mddev*, %struct.mddev** %5, align 8
  %161 = getelementptr inbounds %struct.mddev, %struct.mddev* %160, i32 0, i32 0
  store i32 0, i32* %161, align 8
  store i32 0, i32* %11, align 4
  br label %162

162:                                              ; preds = %151, %150, %134, %115, %93, %42, %36
  %163 = load %struct.mddev*, %struct.mddev** %5, align 8
  %164 = call i32 @mddev_unlock(%struct.mddev* %163)
  %165 = load i32, i32* %11, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %162
  %168 = sext i32 %165 to i64
  br label %171

169:                                              ; preds = %162
  %170 = load i64, i64* %7, align 8
  br label %171

171:                                              ; preds = %169, %167
  %172 = phi i64 [ %168, %167 ], [ %170, %169 ]
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %4, align 4
  br label %174

174:                                              ; preds = %171, %17
  %175 = load i32, i32* %4, align 4
  ret i32 %175
}

declare dso_local i32 @mddev_lock(%struct.mddev*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @cmd_match(i8*, i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @mddev_unlock(%struct.mddev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
