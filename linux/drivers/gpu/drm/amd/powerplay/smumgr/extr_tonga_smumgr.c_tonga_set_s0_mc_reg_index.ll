; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_tonga_smumgr.c_tonga_set_s0_mc_reg_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_tonga_smumgr.c_tonga_set_s0_mc_reg_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tonga_mc_reg_table = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tonga_mc_reg_table*)* @tonga_set_s0_mc_reg_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tonga_set_s0_mc_reg_index(%struct.tonga_mc_reg_table* %0) #0 {
  %2 = alloca %struct.tonga_mc_reg_table*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.tonga_mc_reg_table* %0, %struct.tonga_mc_reg_table** %2, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %39, %1
  %6 = load i64, i64* %3, align 8
  %7 = load %struct.tonga_mc_reg_table*, %struct.tonga_mc_reg_table** %2, align 8
  %8 = getelementptr inbounds %struct.tonga_mc_reg_table, %struct.tonga_mc_reg_table* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %6, %9
  br i1 %10, label %11, label %42

11:                                               ; preds = %5
  %12 = load %struct.tonga_mc_reg_table*, %struct.tonga_mc_reg_table** %2, align 8
  %13 = getelementptr inbounds %struct.tonga_mc_reg_table, %struct.tonga_mc_reg_table* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i64, i64* %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @tonga_check_s0_mc_reg_index(i32 %18, i32* %4)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %11
  %22 = load i32, i32* %4, align 4
  br label %31

23:                                               ; preds = %11
  %24 = load %struct.tonga_mc_reg_table*, %struct.tonga_mc_reg_table** %2, align 8
  %25 = getelementptr inbounds %struct.tonga_mc_reg_table, %struct.tonga_mc_reg_table* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i64, i64* %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  br label %31

31:                                               ; preds = %23, %21
  %32 = phi i32 [ %22, %21 ], [ %30, %23 ]
  %33 = load %struct.tonga_mc_reg_table*, %struct.tonga_mc_reg_table** %2, align 8
  %34 = getelementptr inbounds %struct.tonga_mc_reg_table, %struct.tonga_mc_reg_table* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i64, i64* %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i32 %32, i32* %38, align 4
  br label %39

39:                                               ; preds = %31
  %40 = load i64, i64* %3, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %3, align 8
  br label %5

42:                                               ; preds = %5
  ret i32 0
}

declare dso_local i64 @tonga_check_s0_mc_reg_index(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
