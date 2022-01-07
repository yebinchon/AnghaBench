; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_pblk_set_addrf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_pblk_set_addrf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32, i32, i32, i32, %struct.nvm_tgt_dev* }
%struct.nvm_tgt_dev = type { %struct.nvm_geo }
%struct.nvm_geo = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"bad configuration of sectors/pages\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"OCSSD revision not supported (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk*)* @pblk_set_addrf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_set_addrf(%struct.pblk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca %struct.nvm_tgt_dev*, align 8
  %5 = alloca %struct.nvm_geo*, align 8
  %6 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %3, align 8
  %7 = load %struct.pblk*, %struct.pblk** %3, align 8
  %8 = getelementptr inbounds %struct.pblk, %struct.pblk* %7, i32 0, i32 4
  %9 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %8, align 8
  store %struct.nvm_tgt_dev* %9, %struct.nvm_tgt_dev** %4, align 8
  %10 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %4, align 8
  %11 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %10, i32 0, i32 0
  store %struct.nvm_geo* %11, %struct.nvm_geo** %5, align 8
  %12 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %13 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %49 [
    i32 129, label %15
    i32 128, label %39
  ]

15:                                               ; preds = %1
  %16 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %17 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.pblk*, %struct.pblk** %3, align 8
  %20 = getelementptr inbounds %struct.pblk, %struct.pblk* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @div_u64_rem(i32 %18, i32 %21, i32* %6)
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %15
  %26 = load %struct.pblk*, %struct.pblk** %3, align 8
  %27 = call i32 (%struct.pblk*, i8*, ...) @pblk_err(%struct.pblk* %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %58

30:                                               ; preds = %15
  %31 = load %struct.pblk*, %struct.pblk** %3, align 8
  %32 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %33 = load %struct.pblk*, %struct.pblk** %3, align 8
  %34 = getelementptr inbounds %struct.pblk, %struct.pblk* %33, i32 0, i32 1
  %35 = bitcast i32* %34 to i8*
  %36 = call i32 @pblk_set_addrf_12(%struct.pblk* %31, %struct.nvm_geo* %32, i8* %35)
  %37 = load %struct.pblk*, %struct.pblk** %3, align 8
  %38 = getelementptr inbounds %struct.pblk, %struct.pblk* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  br label %57

39:                                               ; preds = %1
  %40 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %41 = load %struct.pblk*, %struct.pblk** %3, align 8
  %42 = getelementptr inbounds %struct.pblk, %struct.pblk* %41, i32 0, i32 1
  %43 = bitcast i32* %42 to i8*
  %44 = load %struct.pblk*, %struct.pblk** %3, align 8
  %45 = getelementptr inbounds %struct.pblk, %struct.pblk* %44, i32 0, i32 0
  %46 = call i32 @pblk_set_addrf_20(%struct.nvm_geo* %40, i8* %43, i32* %45)
  %47 = load %struct.pblk*, %struct.pblk** %3, align 8
  %48 = getelementptr inbounds %struct.pblk, %struct.pblk* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  br label %57

49:                                               ; preds = %1
  %50 = load %struct.pblk*, %struct.pblk** %3, align 8
  %51 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %52 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (%struct.pblk*, i8*, ...) @pblk_err(%struct.pblk* %50, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %58

57:                                               ; preds = %39, %30
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %49, %25
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @div_u64_rem(i32, i32, i32*) #1

declare dso_local i32 @pblk_err(%struct.pblk*, i8*, ...) #1

declare dso_local i32 @pblk_set_addrf_12(%struct.pblk*, %struct.nvm_geo*, i8*) #1

declare dso_local i32 @pblk_set_addrf_20(%struct.nvm_geo*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
