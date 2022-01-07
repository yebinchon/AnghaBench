; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_pblk_alloc_line_meta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_pblk_alloc_line_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.pblk_line_meta }
%struct.pblk_line_meta = type { i32, i32 }
%struct.pblk_line = type { i8*, i8*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk*, %struct.pblk_line*)* @pblk_alloc_line_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_alloc_line_meta(%struct.pblk* %0, %struct.pblk_line* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pblk*, align 8
  %5 = alloca %struct.pblk_line*, align 8
  %6 = alloca %struct.pblk_line_meta*, align 8
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  store %struct.pblk_line* %1, %struct.pblk_line** %5, align 8
  %7 = load %struct.pblk*, %struct.pblk** %4, align 8
  %8 = getelementptr inbounds %struct.pblk, %struct.pblk* %7, i32 0, i32 0
  store %struct.pblk_line_meta* %8, %struct.pblk_line_meta** %6, align 8
  %9 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %10 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @kzalloc(i32 %11, i32 %12)
  %14 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %15 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %17 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %77

23:                                               ; preds = %2
  %24 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %25 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @kzalloc(i32 %26, i32 %27)
  %29 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %30 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %32 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %23
  br label %70

36:                                               ; preds = %23
  %37 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %38 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i8* @kmalloc_array(i32 %39, i32 4, i32 %40)
  %42 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %43 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %45 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %44, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %36
  br label %65

49:                                               ; preds = %36
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i8* @kzalloc(i32 4, i32 %50)
  %52 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %53 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  %54 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %55 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %54, i32 0, i32 3
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %49
  br label %60

59:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %77

60:                                               ; preds = %58
  %61 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %62 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @kfree(i8* %63)
  br label %65

65:                                               ; preds = %60, %48
  %66 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %67 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @kfree(i8* %68)
  br label %70

70:                                               ; preds = %65, %35
  %71 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %72 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @kfree(i8* %73)
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %70, %59, %20
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i8* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
