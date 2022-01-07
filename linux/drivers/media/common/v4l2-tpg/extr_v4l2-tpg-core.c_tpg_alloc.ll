; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_tpg_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_tpg_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpg_data = type { i32, i8**, i8**, i8**, i8***, i8*** }

@TPG_MAX_PAT_LINES = common dso_local global i32 0, align 4
@TPG_MAX_PLANES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tpg_alloc(%struct.tpg_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tpg_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tpg_data* %0, %struct.tpg_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %12 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %95, %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @TPG_MAX_PAT_LINES, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %98

17:                                               ; preds = %13
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %91, %17
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @TPG_MAX_PLANES, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %94

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 2, i32 4
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @array3_size(i32 %27, i32 2, i32 %28)
  %30 = call i8* @vzalloc(i32 %29)
  %31 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %32 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %31, i32 0, i32 5
  %33 = load i8***, i8**** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i8**, i8*** %33, i64 %35
  %37 = load i8**, i8*** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  store i8* %30, i8** %40, align 8
  %41 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %42 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %41, i32 0, i32 5
  %43 = load i8***, i8**** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i8**, i8*** %43, i64 %45
  %47 = load i8**, i8*** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %22
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %178

56:                                               ; preds = %22
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  br label %91

60:                                               ; preds = %56
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @array3_size(i32 %61, i32 2, i32 %62)
  %64 = call i8* @vzalloc(i32 %63)
  %65 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %66 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %65, i32 0, i32 4
  %67 = load i8***, i8**** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i8**, i8*** %67, i64 %69
  %71 = load i8**, i8*** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  store i8* %64, i8** %74, align 8
  %75 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %76 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %75, i32 0, i32 4
  %77 = load i8***, i8**** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i8**, i8*** %77, i64 %79
  %81 = load i8**, i8*** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %60
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %178

90:                                               ; preds = %60
  br label %91

91:                                               ; preds = %90, %59
  %92 = load i32, i32* %7, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %7, align 4
  br label %18

94:                                               ; preds = %18
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %6, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %13

98:                                               ; preds = %13
  store i32 0, i32* %7, align 4
  br label %99

99:                                               ; preds = %174, %98
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @TPG_MAX_PLANES, align 4
  %102 = icmp ult i32 %100, %101
  br i1 %102, label %103, label %177

103:                                              ; preds = %99
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i32 2, i32 4
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @array_size(i32 %108, i32 %109)
  %111 = call i8* @vzalloc(i32 %110)
  %112 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %113 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %112, i32 0, i32 3
  %114 = load i8**, i8*** %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i8*, i8** %114, i64 %116
  store i8* %111, i8** %117, align 8
  %118 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %119 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %118, i32 0, i32 3
  %120 = load i8**, i8*** %119, align 8
  %121 = load i32, i32* %7, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i8*, i8** %120, i64 %122
  %124 = load i8*, i8** %123, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %103
  %127 = load i32, i32* @ENOMEM, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %3, align 4
  br label %178

129:                                              ; preds = %103
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @array_size(i32 %130, i32 %131)
  %133 = call i8* @vzalloc(i32 %132)
  %134 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %135 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %134, i32 0, i32 2
  %136 = load i8**, i8*** %135, align 8
  %137 = load i32, i32* %7, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i8*, i8** %136, i64 %138
  store i8* %133, i8** %139, align 8
  %140 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %141 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %140, i32 0, i32 2
  %142 = load i8**, i8*** %141, align 8
  %143 = load i32, i32* %7, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds i8*, i8** %142, i64 %144
  %146 = load i8*, i8** %145, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %151, label %148

148:                                              ; preds = %129
  %149 = load i32, i32* @ENOMEM, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %3, align 4
  br label %178

151:                                              ; preds = %129
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* %9, align 4
  %154 = call i32 @array3_size(i32 %152, i32 2, i32 %153)
  %155 = call i8* @vzalloc(i32 %154)
  %156 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %157 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %156, i32 0, i32 1
  %158 = load i8**, i8*** %157, align 8
  %159 = load i32, i32* %7, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds i8*, i8** %158, i64 %160
  store i8* %155, i8** %161, align 8
  %162 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %163 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %162, i32 0, i32 1
  %164 = load i8**, i8*** %163, align 8
  %165 = load i32, i32* %7, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds i8*, i8** %164, i64 %166
  %168 = load i8*, i8** %167, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %173, label %170

170:                                              ; preds = %151
  %171 = load i32, i32* @ENOMEM, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %3, align 4
  br label %178

173:                                              ; preds = %151
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %7, align 4
  %176 = add i32 %175, 1
  store i32 %176, i32* %7, align 4
  br label %99

177:                                              ; preds = %99
  store i32 0, i32* %3, align 4
  br label %178

178:                                              ; preds = %177, %170, %148, %126, %87, %53
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i8* @vzalloc(i32) #1

declare dso_local i32 @array3_size(i32, i32, i32) #1

declare dso_local i32 @array_size(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
