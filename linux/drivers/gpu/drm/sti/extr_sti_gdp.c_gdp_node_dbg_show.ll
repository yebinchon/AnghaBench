; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_gdp.c_gdp_node_dbg_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_gdp.c_gdp_node_dbg_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.drm_info_node* }
%struct.drm_info_node = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.sti_gdp = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@GDP_NODE_NB_BANK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"\0A%s[%d].top\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"\0A%s[%d].btm\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @gdp_node_dbg_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdp_node_dbg_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drm_info_node*, align 8
  %6 = alloca %struct.sti_gdp*, align 8
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load %struct.drm_info_node*, %struct.drm_info_node** %9, align 8
  store %struct.drm_info_node* %10, %struct.drm_info_node** %5, align 8
  %11 = load %struct.drm_info_node*, %struct.drm_info_node** %5, align 8
  %12 = getelementptr inbounds %struct.drm_info_node, %struct.drm_info_node* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.sti_gdp*
  store %struct.sti_gdp* %16, %struct.sti_gdp** %6, align 8
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %54, %2
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @GDP_NODE_NB_BANK, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %57

21:                                               ; preds = %17
  %22 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %23 = load %struct.sti_gdp*, %struct.sti_gdp** %6, align 8
  %24 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %23, i32 0, i32 1
  %25 = call i32 @sti_plane_to_str(i32* %24)
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @seq_printf(%struct.seq_file* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %29 = load %struct.sti_gdp*, %struct.sti_gdp** %6, align 8
  %30 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @gdp_node_dump_node(%struct.seq_file* %28, i32 %36)
  %38 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %39 = load %struct.sti_gdp*, %struct.sti_gdp** %6, align 8
  %40 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %39, i32 0, i32 1
  %41 = call i32 @sti_plane_to_str(i32* %40)
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @seq_printf(%struct.seq_file* %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %45 = load %struct.sti_gdp*, %struct.sti_gdp** %6, align 8
  %46 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @gdp_node_dump_node(%struct.seq_file* %44, i32 %52)
  br label %54

54:                                               ; preds = %21
  %55 = load i32, i32* %7, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %17

57:                                               ; preds = %17
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32) #1

declare dso_local i32 @sti_plane_to_str(i32*) #1

declare dso_local i32 @gdp_node_dump_node(%struct.seq_file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
