; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_parse_ind_reg_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_parse_ind_reg_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32*, i32*, i32, i32*, i32*, i32)* @gfx_v8_0_parse_ind_reg_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v8_0_parse_ind_reg_list(i32* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32 %5, i32* %6, i32* %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32 %8, i32* %18, align 4
  store i32 1, i32* %20, align 4
  br label %21

21:                                               ; preds = %112, %9
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %115

25:                                               ; preds = %21
  %26 = load i32, i32* %20, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %25
  store i32 0, i32* %20, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32*, i32** %16, align 8
  %31 = load i32*, i32** %17, align 8
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  store i32 %29, i32* %34, align 4
  %35 = load i32*, i32** %17, align 8
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  %38 = load i32*, i32** %17, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32*, i32** %17, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %18, align 4
  %42 = icmp sge i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @BUG_ON(i32 %43)
  br label %45

45:                                               ; preds = %28, %25
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i32 1, i32* %20, align 4
  br label %112

53:                                               ; preds = %45
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 2
  store i32 %55, i32* %11, align 4
  store i32 0, i32* %19, align 4
  br label %56

56:                                               ; preds = %75, %53
  %57 = load i32, i32* %19, align 4
  %58 = load i32*, i32** %14, align 8
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %78

61:                                               ; preds = %56
  %62 = load i32*, i32** %13, align 8
  %63 = load i32, i32* %19, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %10, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %66, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %61
  br label %78

74:                                               ; preds = %61
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %19, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %19, align 4
  br label %56

78:                                               ; preds = %73, %56
  %79 = load i32, i32* %19, align 4
  %80 = load i32*, i32** %14, align 8
  %81 = load i32, i32* %80, align 4
  %82 = icmp sge i32 %79, %81
  br i1 %82, label %83, label %106

83:                                               ; preds = %78
  %84 = load i32*, i32** %10, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %13, align 8
  %90 = load i32*, i32** %14, align 8
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  store i32 %88, i32* %93, align 4
  %94 = load i32*, i32** %14, align 8
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %19, align 4
  %96 = load i32*, i32** %14, align 8
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  %99 = load i32*, i32** %14, align 8
  store i32 %98, i32* %99, align 4
  %100 = load i32*, i32** %14, align 8
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %15, align 4
  %103 = icmp sge i32 %101, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @BUG_ON(i32 %104)
  br label %106

106:                                              ; preds = %83, %78
  %107 = load i32, i32* %19, align 4
  %108 = load i32*, i32** %10, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 %107, i32* %111, align 4
  br label %112

112:                                              ; preds = %106, %52
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %11, align 4
  br label %21

115:                                              ; preds = %21
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
