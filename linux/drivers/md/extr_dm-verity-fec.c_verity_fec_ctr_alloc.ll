; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-fec.c_verity_fec_ctr_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-fec.c_verity_fec_ctr_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_verity = type { %struct.dm_verity_fec*, %struct.TYPE_2__* }
%struct.dm_verity_fec = type { i32 }
%struct.TYPE_2__ = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Cannot allocate FEC structure\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @verity_fec_ctr_alloc(%struct.dm_verity* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_verity*, align 8
  %4 = alloca %struct.dm_verity_fec*, align 8
  store %struct.dm_verity* %0, %struct.dm_verity** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.dm_verity_fec* @kzalloc(i32 4, i32 %5)
  store %struct.dm_verity_fec* %6, %struct.dm_verity_fec** %4, align 8
  %7 = load %struct.dm_verity_fec*, %struct.dm_verity_fec** %4, align 8
  %8 = icmp ne %struct.dm_verity_fec* %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load %struct.dm_verity*, %struct.dm_verity** %3, align 8
  %11 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %20

16:                                               ; preds = %1
  %17 = load %struct.dm_verity_fec*, %struct.dm_verity_fec** %4, align 8
  %18 = load %struct.dm_verity*, %struct.dm_verity** %3, align 8
  %19 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %18, i32 0, i32 0
  store %struct.dm_verity_fec* %17, %struct.dm_verity_fec** %19, align 8
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %16, %9
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local %struct.dm_verity_fec* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
