; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_line_alloc_bitmaps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_line_alloc_bitmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.pblk_line_mgmt, %struct.pblk_line_meta }
%struct.pblk_line_mgmt = type { i32 }
%struct.pblk_line_meta = type { i32 }
%struct.pblk_line = type { i32*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk*, %struct.pblk_line*)* @pblk_line_alloc_bitmaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_line_alloc_bitmaps(%struct.pblk* %0, %struct.pblk_line* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pblk*, align 8
  %5 = alloca %struct.pblk_line*, align 8
  %6 = alloca %struct.pblk_line_meta*, align 8
  %7 = alloca %struct.pblk_line_mgmt*, align 8
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  store %struct.pblk_line* %1, %struct.pblk_line** %5, align 8
  %8 = load %struct.pblk*, %struct.pblk** %4, align 8
  %9 = getelementptr inbounds %struct.pblk, %struct.pblk* %8, i32 0, i32 1
  store %struct.pblk_line_meta* %9, %struct.pblk_line_meta** %6, align 8
  %10 = load %struct.pblk*, %struct.pblk** %4, align 8
  %11 = getelementptr inbounds %struct.pblk, %struct.pblk* %10, i32 0, i32 0
  store %struct.pblk_line_mgmt* %11, %struct.pblk_line_mgmt** %7, align 8
  %12 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %7, align 8
  %13 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @mempool_alloc(i32 %14, i32 %15)
  %17 = bitcast i8* %16 to i32*
  %18 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %19 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %18, i32 0, i32 0
  store i32* %17, i32** %19, align 8
  %20 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %21 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %59

27:                                               ; preds = %2
  %28 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %29 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %32 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @memset(i32* %30, i32 0, i32 %33)
  %35 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %7, align 8
  %36 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i8* @mempool_alloc(i32 %37, i32 %38)
  %40 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %41 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %43 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %58, label %46

46:                                               ; preds = %27
  %47 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %48 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %7, align 8
  %51 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @mempool_free(i32* %49, i32 %52)
  %54 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %55 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %54, i32 0, i32 0
  store i32* null, i32** %55, align 8
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %59

58:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %46, %24
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i8* @mempool_alloc(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mempool_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
