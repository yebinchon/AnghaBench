; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_aux_dev.c_auxdev_read_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_aux_dev.c_auxdev_read_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_dp_aux_dev* }
%struct.drm_dp_aux_dev = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.iov_iter = type { i32 }

@ENODEV = common dso_local global i64 0, align 8
@AUX_MAX_OFFSET = common dso_local global i64 0, align 8
@DP_AUX_MAX_PAYLOAD_BYTES = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kiocb*, %struct.iov_iter*)* @auxdev_read_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @auxdev_read_iter(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca %struct.drm_dp_aux_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %13 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %14 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.drm_dp_aux_dev*, %struct.drm_dp_aux_dev** %16, align 8
  store %struct.drm_dp_aux_dev* %17, %struct.drm_dp_aux_dev** %6, align 8
  %18 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %19 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %21 = load %struct.drm_dp_aux_dev*, %struct.drm_dp_aux_dev** %6, align 8
  %22 = getelementptr inbounds %struct.drm_dp_aux_dev, %struct.drm_dp_aux_dev* %21, i32 0, i32 0
  %23 = call i32 @atomic_inc_not_zero(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i64, i64* @ENODEV, align 8
  %27 = sub nsw i64 0, %26
  store i64 %27, i64* %3, align 8
  br label %122

28:                                               ; preds = %2
  %29 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %30 = load i64, i64* @AUX_MAX_OFFSET, align 8
  %31 = load i64, i64* %7, align 8
  %32 = sub nsw i64 %30, %31
  %33 = call i32 @iov_iter_truncate(%struct.iov_iter* %29, i64 %32)
  br label %34

34:                                               ; preds = %95, %28
  %35 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %36 = call i64 @iov_iter_count(%struct.iov_iter* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %96

38:                                               ; preds = %34
  %39 = load i32, i32* @DP_AUX_MAX_PAYLOAD_BYTES, align 4
  %40 = zext i32 %39 to i64
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %9, align 8
  %42 = alloca i32, i64 %40, align 16
  store i64 %40, i64* %10, align 8
  %43 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %44 = call i64 @iov_iter_count(%struct.iov_iter* %43)
  %45 = mul nuw i64 4, %40
  %46 = trunc i64 %45 to i32
  %47 = call i64 @min(i64 %44, i32 %46)
  store i64 %47, i64* %11, align 8
  %48 = load i32, i32* @current, align 4
  %49 = call i64 @signal_pending(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %38
  %52 = load i64, i64* @ERESTARTSYS, align 8
  %53 = sub nsw i64 0, %52
  store i64 %53, i64* %8, align 8
  store i32 3, i32* %12, align 4
  br label %92

54:                                               ; preds = %38
  %55 = load %struct.drm_dp_aux_dev*, %struct.drm_dp_aux_dev** %6, align 8
  %56 = getelementptr inbounds %struct.drm_dp_aux_dev, %struct.drm_dp_aux_dev* %55, i32 0, i32 1
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  %62 = load %struct.drm_dp_aux_dev*, %struct.drm_dp_aux_dev** %6, align 8
  %63 = getelementptr inbounds %struct.drm_dp_aux_dev, %struct.drm_dp_aux_dev* %62, i32 0, i32 1
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* %11, align 8
  %67 = call i64 @drm_dp_mst_dpcd_read(%struct.TYPE_5__* %64, i64 %65, i32* %42, i64 %66)
  store i64 %67, i64* %8, align 8
  br label %75

68:                                               ; preds = %54
  %69 = load %struct.drm_dp_aux_dev*, %struct.drm_dp_aux_dev** %6, align 8
  %70 = getelementptr inbounds %struct.drm_dp_aux_dev, %struct.drm_dp_aux_dev* %69, i32 0, i32 1
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* %11, align 8
  %74 = call i64 @drm_dp_dpcd_read(%struct.TYPE_5__* %71, i64 %72, i32* %42, i64 %73)
  store i64 %74, i64* %8, align 8
  br label %75

75:                                               ; preds = %68, %61
  %76 = load i64, i64* %8, align 8
  %77 = icmp sle i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 3, i32* %12, align 4
  br label %92

79:                                               ; preds = %75
  %80 = load i64, i64* %8, align 8
  %81 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %82 = call i64 @copy_to_iter(i32* %42, i64 %80, %struct.iov_iter* %81)
  %83 = load i64, i64* %8, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load i64, i64* @EFAULT, align 8
  %87 = sub nsw i64 0, %86
  store i64 %87, i64* %8, align 8
  store i32 3, i32* %12, align 4
  br label %92

88:                                               ; preds = %79
  %89 = load i64, i64* %8, align 8
  %90 = load i64, i64* %7, align 8
  %91 = add nsw i64 %90, %89
  store i64 %91, i64* %7, align 8
  store i32 0, i32* %12, align 4
  br label %92

92:                                               ; preds = %88, %85, %78, %51
  %93 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %93)
  %94 = load i32, i32* %12, align 4
  switch i32 %94, label %124 [
    i32 0, label %95
    i32 3, label %96
  ]

95:                                               ; preds = %92
  br label %34

96:                                               ; preds = %92, %34
  %97 = load i64, i64* %7, align 8
  %98 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %99 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %97, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %96
  %103 = load i64, i64* %7, align 8
  %104 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %105 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = sub nsw i64 %103, %106
  store i64 %107, i64* %8, align 8
  br label %108

108:                                              ; preds = %102, %96
  %109 = load i64, i64* %7, align 8
  %110 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %111 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  %112 = load %struct.drm_dp_aux_dev*, %struct.drm_dp_aux_dev** %6, align 8
  %113 = getelementptr inbounds %struct.drm_dp_aux_dev, %struct.drm_dp_aux_dev* %112, i32 0, i32 0
  %114 = call i64 @atomic_dec_and_test(i32* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %108
  %117 = load %struct.drm_dp_aux_dev*, %struct.drm_dp_aux_dev** %6, align 8
  %118 = getelementptr inbounds %struct.drm_dp_aux_dev, %struct.drm_dp_aux_dev* %117, i32 0, i32 0
  %119 = call i32 @wake_up_var(i32* %118)
  br label %120

120:                                              ; preds = %116, %108
  %121 = load i64, i64* %8, align 8
  store i64 %121, i64* %3, align 8
  br label %122

122:                                              ; preds = %120, %25
  %123 = load i64, i64* %3, align 8
  ret i64 %123

124:                                              ; preds = %92
  unreachable
}

declare dso_local i32 @atomic_inc_not_zero(i32*) #1

declare dso_local i32 @iov_iter_truncate(%struct.iov_iter*, i64) #1

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @min(i64, i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i64 @drm_dp_mst_dpcd_read(%struct.TYPE_5__*, i64, i32*, i64) #1

declare dso_local i64 @drm_dp_dpcd_read(%struct.TYPE_5__*, i64, i32*, i64) #1

declare dso_local i64 @copy_to_iter(i32*, i64, %struct.iov_iter*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up_var(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
