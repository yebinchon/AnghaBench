; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-uclogic-params.c_uclogic_params_get_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-uclogic-params.c_uclogic_params_get_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uclogic_params = type { %struct.TYPE_4__, %struct.TYPE_3__, i64, i32*, i32 }
%struct.TYPE_4__ = type { i64, i32* }
%struct.TYPE_3__ = type { i64, i32* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uclogic_params_get_desc(%struct.uclogic_params* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uclogic_params*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.uclogic_params* %0, %struct.uclogic_params** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %12, align 8
  %14 = load %struct.uclogic_params*, %struct.uclogic_params** %5, align 8
  %15 = icmp eq %struct.uclogic_params* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load i32**, i32*** %6, align 8
  %18 = icmp eq i32** %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32*, i32** %7, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19, %16, %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %174

25:                                               ; preds = %19
  store i32 0, i32* %11, align 4
  %26 = load %struct.uclogic_params*, %struct.uclogic_params** %5, align 8
  %27 = getelementptr inbounds %struct.uclogic_params, %struct.uclogic_params* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = load %struct.uclogic_params*, %struct.uclogic_params** %5, align 8
  %32 = getelementptr inbounds %struct.uclogic_params, %struct.uclogic_params* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %25
  %36 = load %struct.uclogic_params*, %struct.uclogic_params** %5, align 8
  %37 = getelementptr inbounds %struct.uclogic_params, %struct.uclogic_params* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br label %41

41:                                               ; preds = %35, %25
  %42 = phi i1 [ false, %25 ], [ %40, %35 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %9, align 4
  %44 = load %struct.uclogic_params*, %struct.uclogic_params** %5, align 8
  %45 = getelementptr inbounds %struct.uclogic_params, %struct.uclogic_params* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %41
  %53 = load %struct.uclogic_params*, %struct.uclogic_params** %5, align 8
  %54 = getelementptr inbounds %struct.uclogic_params, %struct.uclogic_params* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = zext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %52, %41
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = load %struct.uclogic_params*, %struct.uclogic_params** %5, align 8
  %65 = getelementptr inbounds %struct.uclogic_params, %struct.uclogic_params* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = zext i32 %68 to i64
  %70 = add nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %63, %60
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load %struct.uclogic_params*, %struct.uclogic_params** %5, align 8
  %77 = getelementptr inbounds %struct.uclogic_params, %struct.uclogic_params* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = zext i32 %80 to i64
  %82 = add nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %11, align 4
  br label %84

84:                                               ; preds = %75, %72
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %171

93:                                               ; preds = %90, %87, %84
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* @GFP_KERNEL, align 4
  %96 = call i32* @kmalloc(i32 %94, i32 %95)
  store i32* %96, i32** %12, align 8
  %97 = load i32*, i32** %12, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %174

102:                                              ; preds = %93
  %103 = load i32*, i32** %12, align 8
  store i32* %103, i32** %13, align 8
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %120

106:                                              ; preds = %102
  %107 = load i32*, i32** %13, align 8
  %108 = load %struct.uclogic_params*, %struct.uclogic_params** %5, align 8
  %109 = getelementptr inbounds %struct.uclogic_params, %struct.uclogic_params* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.uclogic_params*, %struct.uclogic_params** %5, align 8
  %112 = getelementptr inbounds %struct.uclogic_params, %struct.uclogic_params* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @memcpy(i32* %107, i32* %110, i64 %113)
  %115 = load %struct.uclogic_params*, %struct.uclogic_params** %5, align 8
  %116 = getelementptr inbounds %struct.uclogic_params, %struct.uclogic_params* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load i32*, i32** %13, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 %117
  store i32* %119, i32** %13, align 8
  br label %120

120:                                              ; preds = %106, %102
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %140

123:                                              ; preds = %120
  %124 = load i32*, i32** %13, align 8
  %125 = load %struct.uclogic_params*, %struct.uclogic_params** %5, align 8
  %126 = getelementptr inbounds %struct.uclogic_params, %struct.uclogic_params* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.uclogic_params*, %struct.uclogic_params** %5, align 8
  %130 = getelementptr inbounds %struct.uclogic_params, %struct.uclogic_params* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @memcpy(i32* %124, i32* %128, i64 %132)
  %134 = load %struct.uclogic_params*, %struct.uclogic_params** %5, align 8
  %135 = getelementptr inbounds %struct.uclogic_params, %struct.uclogic_params* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i32*, i32** %13, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 %137
  store i32* %139, i32** %13, align 8
  br label %140

140:                                              ; preds = %123, %120
  %141 = load i32, i32* %10, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %160

143:                                              ; preds = %140
  %144 = load i32*, i32** %13, align 8
  %145 = load %struct.uclogic_params*, %struct.uclogic_params** %5, align 8
  %146 = getelementptr inbounds %struct.uclogic_params, %struct.uclogic_params* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = load %struct.uclogic_params*, %struct.uclogic_params** %5, align 8
  %150 = getelementptr inbounds %struct.uclogic_params, %struct.uclogic_params* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @memcpy(i32* %144, i32* %148, i64 %152)
  %154 = load %struct.uclogic_params*, %struct.uclogic_params** %5, align 8
  %155 = getelementptr inbounds %struct.uclogic_params, %struct.uclogic_params* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i32*, i32** %13, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 %157
  store i32* %159, i32** %13, align 8
  br label %160

160:                                              ; preds = %143, %140
  %161 = load i32*, i32** %13, align 8
  %162 = load i32*, i32** %12, align 8
  %163 = load i32, i32* %11, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = icmp ne i32* %161, %165
  %167 = zext i1 %166 to i32
  %168 = call i32 @WARN_ON(i32 %167)
  %169 = load i32, i32* %11, align 4
  %170 = load i32*, i32** %7, align 8
  store i32 %169, i32* %170, align 4
  br label %171

171:                                              ; preds = %160, %90
  %172 = load i32*, i32** %12, align 8
  %173 = load i32**, i32*** %6, align 8
  store i32* %172, i32** %173, align 8
  store i32 0, i32* %4, align 4
  br label %174

174:                                              ; preds = %171, %99, %22
  %175 = load i32, i32* %4, align 4
  ret i32 %175
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
