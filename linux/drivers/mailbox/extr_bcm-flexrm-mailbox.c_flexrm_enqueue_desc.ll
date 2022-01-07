; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-flexrm-mailbox.c_flexrm_enqueue_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-flexrm-mailbox.c_flexrm_enqueue_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HEADER_BDCOUNT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i8**, i32*, i8*, i8*)* @flexrm_enqueue_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flexrm_enqueue_desc(i32 %0, i32 %1, i32 %2, i32 %3, i8** %4, i32* %5, i8* %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8** %4, i8*** %13, align 8
  store i32* %5, i32** %14, align 8
  store i8* %6, i8** %15, align 8
  store i8* %7, i8** %16, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %8
  br label %164

27:                                               ; preds = %8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @HEADER_BDCOUNT_MAX, align 4
  %30 = srem i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %125

32:                                               ; preds = %27
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %9, align 4
  %35 = sub nsw i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %125

37:                                               ; preds = %32
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %9, align 4
  %40 = sub nsw i32 %38, %39
  store i32 %40, i32* %18, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load i32*, i32** %14, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  br label %52

49:                                               ; preds = %37
  %50 = load i32*, i32** %14, align 8
  %51 = load i32, i32* %50, align 4
  br label %52

52:                                               ; preds = %49, %43
  %53 = phi i32 [ %48, %43 ], [ %51, %49 ]
  store i32 %53, i32* %19, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp eq i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 1, i32 0
  store i32 %57, i32* %20, align 4
  %58 = load i32, i32* %18, align 4
  %59 = load i32, i32* @HEADER_BDCOUNT_MAX, align 4
  %60 = icmp sle i32 %58, %59
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 1, i32 0
  store i32 %62, i32* %21, align 4
  %63 = load i32, i32* %18, align 4
  %64 = load i32, i32* @HEADER_BDCOUNT_MAX, align 4
  %65 = icmp sle i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %52
  %67 = load i32, i32* %18, align 4
  br label %70

68:                                               ; preds = %52
  %69 = load i32, i32* @HEADER_BDCOUNT_MAX, align 4
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %67, %66 ], [ %69, %68 ]
  store i32 %71, i32* %22, align 4
  %72 = load i32, i32* %18, align 4
  %73 = load i32, i32* @HEADER_BDCOUNT_MAX, align 4
  %74 = icmp sle i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* %18, align 4
  store i32 %76, i32* %22, align 4
  br label %79

77:                                               ; preds = %70
  %78 = load i32, i32* @HEADER_BDCOUNT_MAX, align 4
  store i32 %78, i32* %22, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = load i32, i32* %19, align 4
  %81 = load i32, i32* %20, align 4
  %82 = load i32, i32* %21, align 4
  %83 = load i32, i32* %22, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @flexrm_header_desc(i32 %80, i32 %81, i32 %82, i32 %83, i32 0, i32 %84)
  store i32 %85, i32* %17, align 4
  %86 = load i8**, i8*** %13, align 8
  %87 = load i8*, i8** %86, align 8
  %88 = load i32, i32* %17, align 4
  %89 = call i32 @flexrm_write_desc(i8* %87, i32 %88)
  %90 = load i8**, i8*** %13, align 8
  %91 = load i8*, i8** %90, align 8
  %92 = getelementptr i8, i8* %91, i64 4
  store i8* %92, i8** %90, align 8
  %93 = load i8**, i8*** %13, align 8
  %94 = load i8*, i8** %93, align 8
  %95 = load i8*, i8** %16, align 8
  %96 = icmp eq i8* %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %79
  %98 = load i8*, i8** %15, align 8
  %99 = load i8**, i8*** %13, align 8
  store i8* %98, i8** %99, align 8
  br label %100

100:                                              ; preds = %97, %79
  br label %101

101:                                              ; preds = %123, %100
  %102 = load i8**, i8*** %13, align 8
  %103 = load i8*, i8** %102, align 8
  %104 = call i64 @flexrm_is_next_table_desc(i8* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %124

106:                                              ; preds = %101
  %107 = load i32*, i32** %14, align 8
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 0, i32 1
  %112 = load i32*, i32** %14, align 8
  store i32 %111, i32* %112, align 4
  %113 = load i8**, i8*** %13, align 8
  %114 = load i8*, i8** %113, align 8
  %115 = getelementptr i8, i8* %114, i64 4
  store i8* %115, i8** %113, align 8
  %116 = load i8**, i8*** %13, align 8
  %117 = load i8*, i8** %116, align 8
  %118 = load i8*, i8** %16, align 8
  %119 = icmp eq i8* %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %106
  %121 = load i8*, i8** %15, align 8
  %122 = load i8**, i8*** %13, align 8
  store i8* %121, i8** %122, align 8
  br label %123

123:                                              ; preds = %120, %106
  br label %101

124:                                              ; preds = %101
  br label %125

125:                                              ; preds = %124, %32, %27
  %126 = load i8**, i8*** %13, align 8
  %127 = load i8*, i8** %126, align 8
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @flexrm_write_desc(i8* %127, i32 %128)
  %130 = load i8**, i8*** %13, align 8
  %131 = load i8*, i8** %130, align 8
  %132 = getelementptr i8, i8* %131, i64 4
  store i8* %132, i8** %130, align 8
  %133 = load i8**, i8*** %13, align 8
  %134 = load i8*, i8** %133, align 8
  %135 = load i8*, i8** %16, align 8
  %136 = icmp eq i8* %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %125
  %138 = load i8*, i8** %15, align 8
  %139 = load i8**, i8*** %13, align 8
  store i8* %138, i8** %139, align 8
  br label %140

140:                                              ; preds = %137, %125
  br label %141

141:                                              ; preds = %163, %140
  %142 = load i8**, i8*** %13, align 8
  %143 = load i8*, i8** %142, align 8
  %144 = call i64 @flexrm_is_next_table_desc(i8* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %164

146:                                              ; preds = %141
  %147 = load i32*, i32** %14, align 8
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i32 0, i32 1
  %152 = load i32*, i32** %14, align 8
  store i32 %151, i32* %152, align 4
  %153 = load i8**, i8*** %13, align 8
  %154 = load i8*, i8** %153, align 8
  %155 = getelementptr i8, i8* %154, i64 4
  store i8* %155, i8** %153, align 8
  %156 = load i8**, i8*** %13, align 8
  %157 = load i8*, i8** %156, align 8
  %158 = load i8*, i8** %16, align 8
  %159 = icmp eq i8* %157, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %146
  %161 = load i8*, i8** %15, align 8
  %162 = load i8**, i8*** %13, align 8
  store i8* %161, i8** %162, align 8
  br label %163

163:                                              ; preds = %160, %146
  br label %141

164:                                              ; preds = %26, %141
  ret void
}

declare dso_local i32 @flexrm_header_desc(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @flexrm_write_desc(i8*, i32) #1

declare dso_local i64 @flexrm_is_next_table_desc(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
