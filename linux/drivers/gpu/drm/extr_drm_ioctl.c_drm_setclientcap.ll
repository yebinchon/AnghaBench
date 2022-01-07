; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_ioctl.c_drm_setclientcap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_ioctl.c_drm_setclientcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.drm_device = type { i32 }
%struct.drm_file = type { i32, i32, i32, i32, i32 }
%struct.drm_set_client_cap = type { i32, i32 }

@DRIVER_MODESET = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DRIVER_ATOMIC = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [60 x i8] c"broken atomic modeset userspace detected, disabling atomic\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @drm_setclientcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_setclientcap(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_set_client_cap*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.drm_set_client_cap*
  store %struct.drm_set_client_cap* %10, %struct.drm_set_client_cap** %8, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = load i32, i32* @DRIVER_MODESET, align 4
  %13 = call i32 @drm_core_check_feature(%struct.drm_device* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %139

18:                                               ; preds = %3
  %19 = load %struct.drm_set_client_cap*, %struct.drm_set_client_cap** %8, align 8
  %20 = getelementptr inbounds %struct.drm_set_client_cap, %struct.drm_set_client_cap* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %135 [
    i32 130, label %22
    i32 129, label %36
    i32 131, label %50
    i32 132, label %99
    i32 128, label %113
  ]

22:                                               ; preds = %18
  %23 = load %struct.drm_set_client_cap*, %struct.drm_set_client_cap** %8, align 8
  %24 = getelementptr inbounds %struct.drm_set_client_cap, %struct.drm_set_client_cap* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %139

30:                                               ; preds = %22
  %31 = load %struct.drm_set_client_cap*, %struct.drm_set_client_cap** %8, align 8
  %32 = getelementptr inbounds %struct.drm_set_client_cap, %struct.drm_set_client_cap* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %35 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %138

36:                                               ; preds = %18
  %37 = load %struct.drm_set_client_cap*, %struct.drm_set_client_cap** %8, align 8
  %38 = getelementptr inbounds %struct.drm_set_client_cap, %struct.drm_set_client_cap* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %139

44:                                               ; preds = %36
  %45 = load %struct.drm_set_client_cap*, %struct.drm_set_client_cap** %8, align 8
  %46 = getelementptr inbounds %struct.drm_set_client_cap, %struct.drm_set_client_cap* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %49 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %138

50:                                               ; preds = %18
  %51 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %52 = load i32, i32* @DRIVER_ATOMIC, align 4
  %53 = call i32 @drm_core_check_feature(%struct.drm_device* %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @EOPNOTSUPP, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %139

58:                                               ; preds = %50
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 88
  br i1 %65, label %66, label %75

66:                                               ; preds = %58
  %67 = load %struct.drm_set_client_cap*, %struct.drm_set_client_cap** %8, align 8
  %68 = getelementptr inbounds %struct.drm_set_client_cap, %struct.drm_set_client_cap* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = call i32 @pr_info(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* @EOPNOTSUPP, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %139

75:                                               ; preds = %66, %58
  %76 = load %struct.drm_set_client_cap*, %struct.drm_set_client_cap** %8, align 8
  %77 = getelementptr inbounds %struct.drm_set_client_cap, %struct.drm_set_client_cap* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp sgt i32 %78, 2
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %139

83:                                               ; preds = %75
  %84 = load %struct.drm_set_client_cap*, %struct.drm_set_client_cap** %8, align 8
  %85 = getelementptr inbounds %struct.drm_set_client_cap, %struct.drm_set_client_cap* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %88 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  %89 = load %struct.drm_set_client_cap*, %struct.drm_set_client_cap** %8, align 8
  %90 = getelementptr inbounds %struct.drm_set_client_cap, %struct.drm_set_client_cap* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %93 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.drm_set_client_cap*, %struct.drm_set_client_cap** %8, align 8
  %95 = getelementptr inbounds %struct.drm_set_client_cap, %struct.drm_set_client_cap* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %98 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  br label %138

99:                                               ; preds = %18
  %100 = load %struct.drm_set_client_cap*, %struct.drm_set_client_cap** %8, align 8
  %101 = getelementptr inbounds %struct.drm_set_client_cap, %struct.drm_set_client_cap* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp sgt i32 %102, 1
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %4, align 4
  br label %139

107:                                              ; preds = %99
  %108 = load %struct.drm_set_client_cap*, %struct.drm_set_client_cap** %8, align 8
  %109 = getelementptr inbounds %struct.drm_set_client_cap, %struct.drm_set_client_cap* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %112 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 4
  br label %138

113:                                              ; preds = %18
  %114 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %115 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %113
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %4, align 4
  br label %139

121:                                              ; preds = %113
  %122 = load %struct.drm_set_client_cap*, %struct.drm_set_client_cap** %8, align 8
  %123 = getelementptr inbounds %struct.drm_set_client_cap, %struct.drm_set_client_cap* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp sgt i32 %124, 1
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %4, align 4
  br label %139

129:                                              ; preds = %121
  %130 = load %struct.drm_set_client_cap*, %struct.drm_set_client_cap** %8, align 8
  %131 = getelementptr inbounds %struct.drm_set_client_cap, %struct.drm_set_client_cap* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %134 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %133, i32 0, i32 4
  store i32 %132, i32* %134, align 4
  br label %138

135:                                              ; preds = %18
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %4, align 4
  br label %139

138:                                              ; preds = %129, %107, %83, %44, %30
  store i32 0, i32* %4, align 4
  br label %139

139:                                              ; preds = %138, %135, %126, %118, %104, %80, %71, %55, %41, %27, %15
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
