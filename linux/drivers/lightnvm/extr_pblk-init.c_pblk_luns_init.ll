; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_pblk_luns_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_pblk_luns_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.pblk_lun*, %struct.nvm_tgt_dev* }
%struct.pblk_lun = type { i32, i32 }
%struct.nvm_tgt_dev = type { i32*, %struct.nvm_geo }
%struct.nvm_geo = type { i64, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"unbalanced LUN config.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk*)* @pblk_luns_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_luns_init(%struct.pblk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca %struct.nvm_tgt_dev*, align 8
  %5 = alloca %struct.nvm_geo*, align 8
  %6 = alloca %struct.pblk_lun*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %3, align 8
  %11 = load %struct.pblk*, %struct.pblk** %3, align 8
  %12 = getelementptr inbounds %struct.pblk, %struct.pblk* %11, i32 0, i32 1
  %13 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %12, align 8
  store %struct.nvm_tgt_dev* %13, %struct.nvm_tgt_dev** %4, align 8
  %14 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %4, align 8
  %15 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %14, i32 0, i32 1
  store %struct.nvm_geo* %15, %struct.nvm_geo** %5, align 8
  %16 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %17 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.pblk*, %struct.pblk** %3, align 8
  %22 = call i32 @pblk_err(%struct.pblk* %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %90

25:                                               ; preds = %1
  %26 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %27 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.pblk_lun* @kcalloc(i32 %28, i32 8, i32 %29)
  %31 = load %struct.pblk*, %struct.pblk** %3, align 8
  %32 = getelementptr inbounds %struct.pblk, %struct.pblk* %31, i32 0, i32 0
  store %struct.pblk_lun* %30, %struct.pblk_lun** %32, align 8
  %33 = load %struct.pblk*, %struct.pblk** %3, align 8
  %34 = getelementptr inbounds %struct.pblk, %struct.pblk* %33, i32 0, i32 0
  %35 = load %struct.pblk_lun*, %struct.pblk_lun** %34, align 8
  %36 = icmp ne %struct.pblk_lun* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %25
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %90

40:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %86, %40
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %44 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %89

47:                                               ; preds = %41
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %50 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = srem i32 %48, %51
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %55 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = sdiv i32 %53, %56
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %63 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = mul nsw i64 %61, %64
  %66 = add nsw i64 %59, %65
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %10, align 4
  %68 = load %struct.pblk*, %struct.pblk** %3, align 8
  %69 = getelementptr inbounds %struct.pblk, %struct.pblk* %68, i32 0, i32 0
  %70 = load %struct.pblk_lun*, %struct.pblk_lun** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.pblk_lun, %struct.pblk_lun* %70, i64 %72
  store %struct.pblk_lun* %73, %struct.pblk_lun** %6, align 8
  %74 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %4, align 8
  %75 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.pblk_lun*, %struct.pblk_lun** %6, align 8
  %82 = getelementptr inbounds %struct.pblk_lun, %struct.pblk_lun* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.pblk_lun*, %struct.pblk_lun** %6, align 8
  %84 = getelementptr inbounds %struct.pblk_lun, %struct.pblk_lun* %83, i32 0, i32 0
  %85 = call i32 @sema_init(i32* %84, i32 1)
  br label %86

86:                                               ; preds = %47
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %41

89:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %37, %20
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @pblk_err(%struct.pblk*, i8*) #1

declare dso_local %struct.pblk_lun* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @sema_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
