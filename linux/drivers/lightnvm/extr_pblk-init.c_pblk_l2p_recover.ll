; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_pblk_l2p_recover.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_pblk_l2p_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32 }
%struct.pblk_line = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"could not recover l2p table\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk*, i32)* @pblk_l2p_recover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_l2p_recover(%struct.pblk* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pblk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pblk_line*, align 8
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.pblk_line* null, %struct.pblk_line** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.pblk*, %struct.pblk** %4, align 8
  %11 = getelementptr inbounds %struct.pblk, %struct.pblk* %10, i32 0, i32 0
  %12 = call i32 @guid_gen(i32* %11)
  br label %25

13:                                               ; preds = %2
  %14 = load %struct.pblk*, %struct.pblk** %4, align 8
  %15 = call %struct.pblk_line* @pblk_recov_l2p(%struct.pblk* %14)
  store %struct.pblk_line* %15, %struct.pblk_line** %6, align 8
  %16 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %17 = call i64 @IS_ERR(%struct.pblk_line* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load %struct.pblk*, %struct.pblk** %4, align 8
  %21 = call i32 @pblk_err(%struct.pblk* %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EFAULT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %40

24:                                               ; preds = %13
  br label %25

25:                                               ; preds = %24, %9
  %26 = load %struct.pblk*, %struct.pblk** %4, align 8
  %27 = call i32 @pblk_gc_free_full_lines(%struct.pblk* %26)
  %28 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %29 = icmp ne %struct.pblk_line* %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %25
  %31 = load %struct.pblk*, %struct.pblk** %4, align 8
  %32 = call %struct.pblk_line* @pblk_line_get_first_data(%struct.pblk* %31)
  store %struct.pblk_line* %32, %struct.pblk_line** %6, align 8
  %33 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %34 = icmp ne %struct.pblk_line* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @EFAULT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %40

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %25
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %35, %19
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @guid_gen(i32*) #1

declare dso_local %struct.pblk_line* @pblk_recov_l2p(%struct.pblk*) #1

declare dso_local i64 @IS_ERR(%struct.pblk_line*) #1

declare dso_local i32 @pblk_err(%struct.pblk*, i8*) #1

declare dso_local i32 @pblk_gc_free_full_lines(%struct.pblk*) #1

declare dso_local %struct.pblk_line* @pblk_line_get_first_data(%struct.pblk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
