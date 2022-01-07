; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-sysfs.c_pblk_sysfs_lines_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-sysfs.c_pblk_sysfs_lines_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.pblk_line_meta, %struct.nvm_tgt_dev* }
%struct.pblk_line_meta = type { i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32 }
%struct.nvm_tgt_dev = type { %struct.nvm_geo }
%struct.nvm_geo = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"smeta - len:%d, secs:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"emeta - len:%d, sec:%d, bb_start:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"bitmap lengths: sec:%d, blk:%d, lun:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"blk_line:%d, sec_line:%d, sec_blk:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk*, i8*)* @pblk_sysfs_lines_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_sysfs_lines_info(%struct.pblk* %0, i8* %1) #0 {
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nvm_tgt_dev*, align 8
  %6 = alloca %struct.nvm_geo*, align 8
  %7 = alloca %struct.pblk_line_meta*, align 8
  %8 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.pblk*, %struct.pblk** %3, align 8
  %10 = getelementptr inbounds %struct.pblk, %struct.pblk* %9, i32 0, i32 1
  %11 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %10, align 8
  store %struct.nvm_tgt_dev* %11, %struct.nvm_tgt_dev** %5, align 8
  %12 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %5, align 8
  %13 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %12, i32 0, i32 0
  store %struct.nvm_geo* %13, %struct.nvm_geo** %6, align 8
  %14 = load %struct.pblk*, %struct.pblk** %3, align 8
  %15 = getelementptr inbounds %struct.pblk, %struct.pblk* %14, i32 0, i32 0
  store %struct.pblk_line_meta* %15, %struct.pblk_line_meta** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = load i32, i32* %8, align 4
  %19 = sub nsw i32 %17, %18
  %20 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %7, align 8
  %21 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %7, align 8
  %24 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i8*, i32, i8*, i32, i32, ...) @snprintf(i8* %16, i32 %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = load i32, i32* %8, align 4
  %33 = sub nsw i32 %31, %32
  %34 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %7, align 8
  %35 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %7, align 8
  %40 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %7, align 8
  %45 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i8*, i32, i8*, i32, i32, ...) @snprintf(i8* %30, i32 %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %43, i32 %46)
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %8, align 4
  %50 = load i8*, i8** %4, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = load i32, i32* %8, align 4
  %56 = sub nsw i32 %54, %55
  %57 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %7, align 8
  %58 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %7, align 8
  %61 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %7, align 8
  %64 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i8*, i32, i8*, i32, i32, ...) @snprintf(i8* %53, i32 %56, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %59, i32 %62, i32 %65)
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %8, align 4
  %69 = load i8*, i8** %4, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load i32, i32* @PAGE_SIZE, align 4
  %74 = load i32, i32* %8, align 4
  %75 = sub nsw i32 %73, %74
  %76 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %7, align 8
  %77 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %7, align 8
  %80 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %79, i32 0, i32 9
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.nvm_geo*, %struct.nvm_geo** %6, align 8
  %83 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i8*, i32, i8*, i32, i32, ...) @snprintf(i8* %72, i32 %75, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %78, i32 %81, i32 %84)
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  ret i32 %88
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
