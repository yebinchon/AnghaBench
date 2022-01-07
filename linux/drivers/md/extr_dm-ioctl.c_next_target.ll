; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-ioctl.c_next_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-ioctl.c_next_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target_spec = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target_spec*, i32, i8*, %struct.dm_target_spec**, i8**)* @next_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_target(%struct.dm_target_spec* %0, i32 %1, i8* %2, %struct.dm_target_spec** %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dm_target_spec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.dm_target_spec**, align 8
  %11 = alloca i8**, align 8
  store %struct.dm_target_spec* %0, %struct.dm_target_spec** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store %struct.dm_target_spec** %3, %struct.dm_target_spec*** %10, align 8
  store i8** %4, i8*** %11, align 8
  %12 = load %struct.dm_target_spec*, %struct.dm_target_spec** %7, align 8
  %13 = bitcast %struct.dm_target_spec* %12 to i8*
  %14 = load i32, i32* %8, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = bitcast i8* %16 to %struct.dm_target_spec*
  %18 = load %struct.dm_target_spec**, %struct.dm_target_spec*** %10, align 8
  store %struct.dm_target_spec* %17, %struct.dm_target_spec** %18, align 8
  %19 = load %struct.dm_target_spec**, %struct.dm_target_spec*** %10, align 8
  %20 = load %struct.dm_target_spec*, %struct.dm_target_spec** %19, align 8
  %21 = getelementptr inbounds %struct.dm_target_spec, %struct.dm_target_spec* %20, i64 1
  %22 = bitcast %struct.dm_target_spec* %21 to i8*
  %23 = load i8**, i8*** %11, align 8
  store i8* %22, i8** %23, align 8
  %24 = load %struct.dm_target_spec**, %struct.dm_target_spec*** %10, align 8
  %25 = load %struct.dm_target_spec*, %struct.dm_target_spec** %24, align 8
  %26 = load %struct.dm_target_spec*, %struct.dm_target_spec** %7, align 8
  %27 = getelementptr inbounds %struct.dm_target_spec, %struct.dm_target_spec* %26, i64 1
  %28 = icmp ult %struct.dm_target_spec* %25, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %5
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %37

32:                                               ; preds = %5
  %33 = load i8**, i8*** %11, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @invalid_str(i8* %34, i8* %35)
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %32, %29
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local i32 @invalid_str(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
