; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-recovery.c_pblk_sec_in_open_line.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-recovery.c_pblk_sec_in_open_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.pblk_line_meta }
%struct.pblk_line_meta = type { i32, i64 }
%struct.pblk_line = type { i32, %struct.nvm_chk_meta*, i32 }
%struct.nvm_chk_meta = type { i32, i64 }

@NVM_CHK_ST_OFFLINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"recovery line %d is bad\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pblk*, %struct.pblk_line*)* @pblk_sec_in_open_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pblk_sec_in_open_line(%struct.pblk* %0, %struct.pblk_line* %1) #0 {
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca %struct.pblk_line*, align 8
  %5 = alloca %struct.pblk_line_meta*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvm_chk_meta*, align 8
  store %struct.pblk* %0, %struct.pblk** %3, align 8
  store %struct.pblk_line* %1, %struct.pblk_line** %4, align 8
  %11 = load %struct.pblk*, %struct.pblk** %3, align 8
  %12 = getelementptr inbounds %struct.pblk, %struct.pblk* %11, i32 0, i32 0
  store %struct.pblk_line_meta* %12, %struct.pblk_line_meta** %5, align 8
  %13 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %14 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %5, align 8
  %17 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @bitmap_weight(i32 %15, i32 %18)
  store i32 %19, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %48, %2
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %5, align 8
  %23 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %20
  %27 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %28 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %27, i32 0, i32 1
  %29 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %29, i64 %31
  store %struct.nvm_chk_meta* %32, %struct.nvm_chk_meta** %10, align 8
  %33 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %10, align 8
  %34 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @NVM_CHK_ST_OFFLINE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  br label %48

40:                                               ; preds = %26
  %41 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %10, align 8
  %42 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = add nsw i64 %44, %43
  store i64 %45, i64* %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %40, %39
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %20

51:                                               ; preds = %20
  %52 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %5, align 8
  %53 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sub nsw i32 %54, %55
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %51
  %60 = load %struct.pblk*, %struct.pblk** %3, align 8
  %61 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %62 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @pblk_err(%struct.pblk* %60, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %59, %51
  %66 = load %struct.pblk*, %struct.pblk** %3, align 8
  %67 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %5, align 8
  %70 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %68, %71
  %73 = call i32 @pblk_update_line_wp(%struct.pblk* %66, %struct.pblk_line* %67, i64 %72)
  %74 = load i64, i64* %7, align 8
  ret i64 %74
}

declare dso_local i32 @bitmap_weight(i32, i32) #1

declare dso_local i32 @pblk_err(%struct.pblk*, i8*, i32) #1

declare dso_local i32 @pblk_update_line_wp(%struct.pblk*, %struct.pblk_line*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
