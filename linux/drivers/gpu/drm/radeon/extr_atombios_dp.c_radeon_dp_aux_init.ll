; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_dp.c_radeon_dp_aux_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_dp.c_radeon_dp_aux_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_connector = type { %struct.TYPE_9__*, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i8*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.TYPE_7__ = type { i32 }

@radeon_auxch = common dso_local global i64 0, align 8
@radeon_dp_aux_transfer_native = common dso_local global i8* null, align 8
@radeon_dp_aux_transfer_atom = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [44 x i8] c"drm_dp_aux_register() failed with error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_dp_aux_init(%struct.radeon_connector* %0) #0 {
  %2 = alloca %struct.radeon_connector*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  store %struct.radeon_connector* %0, %struct.radeon_connector** %2, align 8
  %6 = load %struct.radeon_connector*, %struct.radeon_connector** %2, align 8
  %7 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %3, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.radeon_device*, %struct.radeon_device** %11, align 8
  store %struct.radeon_device* %12, %struct.radeon_device** %4, align 8
  %13 = load %struct.radeon_connector*, %struct.radeon_connector** %2, align 8
  %14 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.radeon_connector*, %struct.radeon_connector** %2, align 8
  %18 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %17, i32 0, i32 0
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i32 %16, i32* %21, align 8
  %22 = load %struct.radeon_connector*, %struct.radeon_connector** %2, align 8
  %23 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.radeon_connector*, %struct.radeon_connector** %2, align 8
  %27 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %26, i32 0, i32 0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  store i32 %25, i32* %30, align 8
  %31 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %32 = call i64 @ASIC_IS_DCE5(%struct.radeon_device* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %1
  %35 = load i64, i64* @radeon_auxch, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i8*, i8** @radeon_dp_aux_transfer_native, align 8
  %39 = load %struct.radeon_connector*, %struct.radeon_connector** %2, align 8
  %40 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %39, i32 0, i32 0
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  store i8* %38, i8** %43, align 8
  br label %51

44:                                               ; preds = %34
  %45 = load i8*, i8** @radeon_dp_aux_transfer_atom, align 8
  %46 = load %struct.radeon_connector*, %struct.radeon_connector** %2, align 8
  %47 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %46, i32 0, i32 0
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  store i8* %45, i8** %50, align 8
  br label %51

51:                                               ; preds = %44, %37
  br label %59

52:                                               ; preds = %1
  %53 = load i8*, i8** @radeon_dp_aux_transfer_atom, align 8
  %54 = load %struct.radeon_connector*, %struct.radeon_connector** %2, align 8
  %55 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %54, i32 0, i32 0
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  store i8* %53, i8** %58, align 8
  br label %59

59:                                               ; preds = %52, %51
  %60 = load %struct.radeon_connector*, %struct.radeon_connector** %2, align 8
  %61 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %60, i32 0, i32 0
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = call i32 @drm_dp_aux_register(%struct.TYPE_10__* %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %59
  %68 = load %struct.radeon_connector*, %struct.radeon_connector** %2, align 8
  %69 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %68, i32 0, i32 0
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  br label %72

72:                                               ; preds = %67, %59
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @WARN(i32 %73, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %74)
  ret void
}

declare dso_local i64 @ASIC_IS_DCE5(%struct.radeon_device*) #1

declare dso_local i32 @drm_dp_aux_register(%struct.TYPE_10__*) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
