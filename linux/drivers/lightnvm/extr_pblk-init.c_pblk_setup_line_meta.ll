; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_pblk_setup_line_meta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_pblk_setup_line_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.pblk_line_meta, %struct.pblk_line_mgmt }
%struct.pblk_line_meta = type { i64, i64 }
%struct.pblk_line_mgmt = type { i32, i32, i32, i32* }
%struct.pblk_line = type { i32, i32, i32, i32, i32, i32*, i32, i32, %struct.pblk* }

@PBLK_LINETYPE_FREE = common dso_local global i32 0, align 4
@PBLK_LINESTATE_NEW = common dso_local global i32 0, align 4
@PBLK_LINEGC_NONE = common dso_local global i32 0, align 4
@PBLK_LINESTATE_BAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pblk*, %struct.pblk_line*, i8*, i32)* @pblk_setup_line_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pblk_setup_line_meta(%struct.pblk* %0, %struct.pblk_line* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.pblk*, align 8
  %7 = alloca %struct.pblk_line*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pblk_line_mgmt*, align 8
  %11 = alloca %struct.pblk_line_meta*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.pblk* %0, %struct.pblk** %6, align 8
  store %struct.pblk_line* %1, %struct.pblk_line** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.pblk*, %struct.pblk** %6, align 8
  %15 = getelementptr inbounds %struct.pblk, %struct.pblk* %14, i32 0, i32 1
  store %struct.pblk_line_mgmt* %15, %struct.pblk_line_mgmt** %10, align 8
  %16 = load %struct.pblk*, %struct.pblk** %6, align 8
  %17 = getelementptr inbounds %struct.pblk, %struct.pblk* %16, i32 0, i32 0
  store %struct.pblk_line_meta* %17, %struct.pblk_line_meta** %11, align 8
  %18 = load %struct.pblk*, %struct.pblk** %6, align 8
  %19 = load %struct.pblk_line*, %struct.pblk_line** %7, align 8
  %20 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %19, i32 0, i32 8
  store %struct.pblk* %18, %struct.pblk** %20, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.pblk_line*, %struct.pblk_line** %7, align 8
  %23 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @PBLK_LINETYPE_FREE, align 4
  %25 = load %struct.pblk_line*, %struct.pblk_line** %7, align 8
  %26 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @PBLK_LINESTATE_NEW, align 4
  %28 = load %struct.pblk_line*, %struct.pblk_line** %7, align 8
  %29 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @PBLK_LINEGC_NONE, align 4
  %31 = load %struct.pblk_line*, %struct.pblk_line** %7, align 8
  %32 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 8
  %33 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %10, align 8
  %34 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load %struct.pblk_line*, %struct.pblk_line** %7, align 8
  %40 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %39, i32 0, i32 5
  store i32* %38, i32** %40, align 8
  %41 = load %struct.pblk_line*, %struct.pblk_line** %7, align 8
  %42 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %41, i32 0, i32 4
  %43 = call i32 @spin_lock_init(i32* %42)
  %44 = load %struct.pblk*, %struct.pblk** %6, align 8
  %45 = load %struct.pblk_line*, %struct.pblk_line** %7, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = call i64 @pblk_setup_line_meta_chk(%struct.pblk* %44, %struct.pblk_line* %45, i8* %46)
  store i64 %47, i64* %12, align 8
  %48 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %11, align 8
  %49 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %12, align 8
  %52 = sub nsw i64 %50, %51
  store i64 %52, i64* %13, align 8
  %53 = load i64, i64* %12, align 8
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %4
  %56 = load i64, i64* %12, align 8
  %57 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %11, align 8
  %58 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %56, %59
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = load i64, i64* %13, align 8
  %63 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %11, align 8
  %64 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %62, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %61, %55, %4
  %68 = load i32, i32* @PBLK_LINESTATE_BAD, align 4
  %69 = load %struct.pblk_line*, %struct.pblk_line** %7, align 8
  %70 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.pblk_line*, %struct.pblk_line** %7, align 8
  %72 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %71, i32 0, i32 1
  %73 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %10, align 8
  %74 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %73, i32 0, i32 2
  %75 = call i32 @list_add_tail(i32* %72, i32* %74)
  store i64 0, i64* %5, align 8
  br label %91

76:                                               ; preds = %61
  %77 = load %struct.pblk_line*, %struct.pblk_line** %7, align 8
  %78 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %77, i32 0, i32 2
  %79 = load i64, i64* %13, align 8
  %80 = call i32 @atomic_set(i32* %78, i64 %79)
  %81 = load %struct.pblk_line*, %struct.pblk_line** %7, align 8
  %82 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %81, i32 0, i32 1
  %83 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %10, align 8
  %84 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %83, i32 0, i32 1
  %85 = call i32 @list_add_tail(i32* %82, i32* %84)
  %86 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %10, align 8
  %87 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  %90 = load i64, i64* %13, align 8
  store i64 %90, i64* %5, align 8
  br label %91

91:                                               ; preds = %76, %67
  %92 = load i64, i64* %5, align 8
  ret i64 %92
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @pblk_setup_line_meta_chk(%struct.pblk*, %struct.pblk_line*, i8*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @atomic_set(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
