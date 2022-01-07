; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_plane.c_mdp5_plane_atomic_print_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_plane.c_mdp5_plane_atomic_print_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_printer = type { i32 }
%struct.drm_plane_state = type { i32 }
%struct.mdp5_plane_state = type { i8*, i8*, i8*, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }
%struct.mdp5_kms = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"\09hwpipe=%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@MDP_CAP_SRC_SPLIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"\09right-hwpipe=%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"\09premultiplied=%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"\09zpos=%u\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"\09alpha=%u\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"\09stage=%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_printer*, %struct.drm_plane_state*)* @mdp5_plane_atomic_print_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdp5_plane_atomic_print_state(%struct.drm_printer* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_printer*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.mdp5_plane_state*, align 8
  %6 = alloca %struct.mdp5_kms*, align 8
  store %struct.drm_printer* %0, %struct.drm_printer** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %7 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %8 = call %struct.mdp5_plane_state* @to_mdp5_plane_state(%struct.drm_plane_state* %7)
  store %struct.mdp5_plane_state* %8, %struct.mdp5_plane_state** %5, align 8
  %9 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %10 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.mdp5_kms* @get_kms(i32 %11)
  store %struct.mdp5_kms* %12, %struct.mdp5_kms** %6, align 8
  %13 = load %struct.drm_printer*, %struct.drm_printer** %3, align 8
  %14 = load %struct.mdp5_plane_state*, %struct.mdp5_plane_state** %5, align 8
  %15 = getelementptr inbounds %struct.mdp5_plane_state, %struct.mdp5_plane_state* %14, i32 0, i32 5
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = icmp ne %struct.TYPE_3__* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.mdp5_plane_state*, %struct.mdp5_plane_state** %5, align 8
  %20 = getelementptr inbounds %struct.mdp5_plane_state, %struct.mdp5_plane_state* %19, i32 0, i32 5
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  br label %25

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %24, %18
  %26 = phi i8* [ %23, %18 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %24 ]
  %27 = call i32 @drm_printf(%struct.drm_printer* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load %struct.mdp5_kms*, %struct.mdp5_kms** %6, align 8
  %29 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MDP_CAP_SRC_SPLIT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %25
  %35 = load %struct.drm_printer*, %struct.drm_printer** %3, align 8
  %36 = load %struct.mdp5_plane_state*, %struct.mdp5_plane_state** %5, align 8
  %37 = getelementptr inbounds %struct.mdp5_plane_state, %struct.mdp5_plane_state* %36, i32 0, i32 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = icmp ne %struct.TYPE_4__* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.mdp5_plane_state*, %struct.mdp5_plane_state** %5, align 8
  %42 = getelementptr inbounds %struct.mdp5_plane_state, %struct.mdp5_plane_state* %41, i32 0, i32 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  br label %47

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46, %40
  %48 = phi i8* [ %45, %40 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %46 ]
  %49 = call i32 @drm_printf(%struct.drm_printer* %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %47, %25
  %51 = load %struct.drm_printer*, %struct.drm_printer** %3, align 8
  %52 = load %struct.mdp5_plane_state*, %struct.mdp5_plane_state** %5, align 8
  %53 = getelementptr inbounds %struct.mdp5_plane_state, %struct.mdp5_plane_state* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @drm_printf(%struct.drm_printer* %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %54)
  %56 = load %struct.drm_printer*, %struct.drm_printer** %3, align 8
  %57 = load %struct.mdp5_plane_state*, %struct.mdp5_plane_state** %5, align 8
  %58 = getelementptr inbounds %struct.mdp5_plane_state, %struct.mdp5_plane_state* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @drm_printf(%struct.drm_printer* %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %59)
  %61 = load %struct.drm_printer*, %struct.drm_printer** %3, align 8
  %62 = load %struct.mdp5_plane_state*, %struct.mdp5_plane_state** %5, align 8
  %63 = getelementptr inbounds %struct.mdp5_plane_state, %struct.mdp5_plane_state* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @drm_printf(%struct.drm_printer* %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %64)
  %66 = load %struct.drm_printer*, %struct.drm_printer** %3, align 8
  %67 = load %struct.mdp5_plane_state*, %struct.mdp5_plane_state** %5, align 8
  %68 = getelementptr inbounds %struct.mdp5_plane_state, %struct.mdp5_plane_state* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i8* @stage2name(i32 %69)
  %71 = call i32 @drm_printf(%struct.drm_printer* %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %70)
  ret void
}

declare dso_local %struct.mdp5_plane_state* @to_mdp5_plane_state(%struct.drm_plane_state*) #1

declare dso_local %struct.mdp5_kms* @get_kms(i32) #1

declare dso_local i32 @drm_printf(%struct.drm_printer*, i8*, i8*) #1

declare dso_local i8* @stage2name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
