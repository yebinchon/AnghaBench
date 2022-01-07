; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_aux_dev.c_auxdev_write_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_aux_dev.c_auxdev_write_iter.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kiocb*, %struct.iov_iter*)* @auxdev_write_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @auxdev_write_iter(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
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
  br label %121

28:                                               ; preds = %2
  %29 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %30 = load i64, i64* @AUX_MAX_OFFSET, align 8
  %31 = load i64, i64* %7, align 8
  %32 = sub nsw i64 %30, %31
  %33 = call i32 @iov_iter_truncate(%struct.iov_iter* %29, i64 %32)
  br label %34

34:                                               ; preds = %94, %28
  %35 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %36 = call i64 @iov_iter_count(%struct.iov_iter* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %95

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
  br label %91

54:                                               ; preds = %38
  %55 = load i64, i64* %11, align 8
  %56 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %57 = call i32 @copy_from_iter_full(i32* %42, i64 %55, %struct.iov_iter* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i64, i64* @EFAULT, align 8
  %61 = sub nsw i64 0, %60
  store i64 %61, i64* %8, align 8
  store i32 3, i32* %12, align 4
  br label %91

62:                                               ; preds = %54
  %63 = load %struct.drm_dp_aux_dev*, %struct.drm_dp_aux_dev** %6, align 8
  %64 = getelementptr inbounds %struct.drm_dp_aux_dev, %struct.drm_dp_aux_dev* %63, i32 0, i32 1
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %62
  %70 = load %struct.drm_dp_aux_dev*, %struct.drm_dp_aux_dev** %6, align 8
  %71 = getelementptr inbounds %struct.drm_dp_aux_dev, %struct.drm_dp_aux_dev* %70, i32 0, i32 1
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* %11, align 8
  %75 = call i64 @drm_dp_mst_dpcd_write(%struct.TYPE_5__* %72, i64 %73, i32* %42, i64 %74)
  store i64 %75, i64* %8, align 8
  br label %83

76:                                               ; preds = %62
  %77 = load %struct.drm_dp_aux_dev*, %struct.drm_dp_aux_dev** %6, align 8
  %78 = getelementptr inbounds %struct.drm_dp_aux_dev, %struct.drm_dp_aux_dev* %77, i32 0, i32 1
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = load i64, i64* %7, align 8
  %81 = load i64, i64* %11, align 8
  %82 = call i64 @drm_dp_dpcd_write(%struct.TYPE_5__* %79, i64 %80, i32* %42, i64 %81)
  store i64 %82, i64* %8, align 8
  br label %83

83:                                               ; preds = %76, %69
  %84 = load i64, i64* %8, align 8
  %85 = icmp sle i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 3, i32* %12, align 4
  br label %91

87:                                               ; preds = %83
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* %7, align 8
  %90 = add nsw i64 %89, %88
  store i64 %90, i64* %7, align 8
  store i32 0, i32* %12, align 4
  br label %91

91:                                               ; preds = %87, %86, %59, %51
  %92 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %92)
  %93 = load i32, i32* %12, align 4
  switch i32 %93, label %123 [
    i32 0, label %94
    i32 3, label %95
  ]

94:                                               ; preds = %91
  br label %34

95:                                               ; preds = %91, %34
  %96 = load i64, i64* %7, align 8
  %97 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %98 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %96, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %95
  %102 = load i64, i64* %7, align 8
  %103 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %104 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = sub nsw i64 %102, %105
  store i64 %106, i64* %8, align 8
  br label %107

107:                                              ; preds = %101, %95
  %108 = load i64, i64* %7, align 8
  %109 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %110 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  %111 = load %struct.drm_dp_aux_dev*, %struct.drm_dp_aux_dev** %6, align 8
  %112 = getelementptr inbounds %struct.drm_dp_aux_dev, %struct.drm_dp_aux_dev* %111, i32 0, i32 0
  %113 = call i64 @atomic_dec_and_test(i32* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %107
  %116 = load %struct.drm_dp_aux_dev*, %struct.drm_dp_aux_dev** %6, align 8
  %117 = getelementptr inbounds %struct.drm_dp_aux_dev, %struct.drm_dp_aux_dev* %116, i32 0, i32 0
  %118 = call i32 @wake_up_var(i32* %117)
  br label %119

119:                                              ; preds = %115, %107
  %120 = load i64, i64* %8, align 8
  store i64 %120, i64* %3, align 8
  br label %121

121:                                              ; preds = %119, %25
  %122 = load i64, i64* %3, align 8
  ret i64 %122

123:                                              ; preds = %91
  unreachable
}

declare dso_local i32 @atomic_inc_not_zero(i32*) #1

declare dso_local i32 @iov_iter_truncate(%struct.iov_iter*, i64) #1

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @min(i64, i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @copy_from_iter_full(i32*, i64, %struct.iov_iter*) #1

declare dso_local i64 @drm_dp_mst_dpcd_write(%struct.TYPE_5__*, i64, i32*, i64) #1

declare dso_local i64 @drm_dp_dpcd_write(%struct.TYPE_5__*, i64, i32*, i64) #1

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
