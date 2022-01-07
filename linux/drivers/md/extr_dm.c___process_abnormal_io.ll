; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c___process_abnormal_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c___process_abnormal_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clone_info = type { %struct.bio* }
%struct.bio = type { i32 }
%struct.dm_target = type { i32 }

@REQ_OP_DISCARD = common dso_local global i64 0, align 8
@REQ_OP_SECURE_ERASE = common dso_local global i64 0, align 8
@REQ_OP_WRITE_SAME = common dso_local global i64 0, align 8
@REQ_OP_WRITE_ZEROES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clone_info*, %struct.dm_target*, i32*)* @__process_abnormal_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__process_abnormal_io(%struct.clone_info* %0, %struct.dm_target* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clone_info*, align 8
  %6 = alloca %struct.dm_target*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.bio*, align 8
  store %struct.clone_info* %0, %struct.clone_info** %5, align 8
  store %struct.dm_target* %1, %struct.dm_target** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.clone_info*, %struct.clone_info** %5, align 8
  %10 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %9, i32 0, i32 0
  %11 = load %struct.bio*, %struct.bio** %10, align 8
  store %struct.bio* %11, %struct.bio** %8, align 8
  %12 = load %struct.bio*, %struct.bio** %8, align 8
  %13 = call i64 @bio_op(%struct.bio* %12)
  %14 = load i64, i64* @REQ_OP_DISCARD, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.clone_info*, %struct.clone_info** %5, align 8
  %18 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %19 = call i32 @__send_discard(%struct.clone_info* %17, %struct.dm_target* %18)
  %20 = load i32*, i32** %7, align 8
  store i32 %19, i32* %20, align 4
  br label %55

21:                                               ; preds = %3
  %22 = load %struct.bio*, %struct.bio** %8, align 8
  %23 = call i64 @bio_op(%struct.bio* %22)
  %24 = load i64, i64* @REQ_OP_SECURE_ERASE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.clone_info*, %struct.clone_info** %5, align 8
  %28 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %29 = call i32 @__send_secure_erase(%struct.clone_info* %27, %struct.dm_target* %28)
  %30 = load i32*, i32** %7, align 8
  store i32 %29, i32* %30, align 4
  br label %54

31:                                               ; preds = %21
  %32 = load %struct.bio*, %struct.bio** %8, align 8
  %33 = call i64 @bio_op(%struct.bio* %32)
  %34 = load i64, i64* @REQ_OP_WRITE_SAME, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.clone_info*, %struct.clone_info** %5, align 8
  %38 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %39 = call i32 @__send_write_same(%struct.clone_info* %37, %struct.dm_target* %38)
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  br label %53

41:                                               ; preds = %31
  %42 = load %struct.bio*, %struct.bio** %8, align 8
  %43 = call i64 @bio_op(%struct.bio* %42)
  %44 = load i64, i64* @REQ_OP_WRITE_ZEROES, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.clone_info*, %struct.clone_info** %5, align 8
  %48 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %49 = call i32 @__send_write_zeroes(%struct.clone_info* %47, %struct.dm_target* %48)
  %50 = load i32*, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  br label %52

51:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %56

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %36
  br label %54

54:                                               ; preds = %53, %26
  br label %55

55:                                               ; preds = %54, %16
  store i32 1, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %51
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local i32 @__send_discard(%struct.clone_info*, %struct.dm_target*) #1

declare dso_local i32 @__send_secure_erase(%struct.clone_info*, %struct.dm_target*) #1

declare dso_local i32 @__send_write_same(%struct.clone_info*, %struct.dm_target*) #1

declare dso_local i32 @__send_write_zeroes(%struct.clone_info*, %struct.dm_target*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
