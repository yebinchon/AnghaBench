; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_vnic.c_usnic_vnic_get_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_vnic.c_usnic_vnic_get_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usnic_vnic_res_chunk = type { i32, i32, %struct.usnic_vnic*, %struct.usnic_vnic_res**, i32 }
%struct.usnic_vnic_res = type { i8* }
%struct.usnic_vnic = type { i32, %struct.usnic_vnic_res_chunk* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usnic_vnic_res_chunk* @usnic_vnic_get_resources(%struct.usnic_vnic* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.usnic_vnic_res_chunk*, align 8
  %6 = alloca %struct.usnic_vnic*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.usnic_vnic_res_chunk*, align 8
  %11 = alloca %struct.usnic_vnic_res_chunk*, align 8
  %12 = alloca %struct.usnic_vnic_res*, align 8
  %13 = alloca i32, align 4
  store %struct.usnic_vnic* %0, %struct.usnic_vnic** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load %struct.usnic_vnic*, %struct.usnic_vnic** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @usnic_vnic_res_free_cnt(%struct.usnic_vnic* %14, i32 %15)
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i8*, i8** %9, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %22, %19, %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.usnic_vnic_res_chunk* @ERR_PTR(i32 %27)
  store %struct.usnic_vnic_res_chunk* %28, %struct.usnic_vnic_res_chunk** %5, align 8
  br label %134

29:                                               ; preds = %22
  %30 = load i32, i32* @GFP_ATOMIC, align 4
  %31 = call %struct.usnic_vnic_res_chunk* @kzalloc(i32 32, i32 %30)
  store %struct.usnic_vnic_res_chunk* %31, %struct.usnic_vnic_res_chunk** %11, align 8
  %32 = load %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %11, align 8
  %33 = icmp ne %struct.usnic_vnic_res_chunk* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.usnic_vnic_res_chunk* @ERR_PTR(i32 %36)
  store %struct.usnic_vnic_res_chunk* %37, %struct.usnic_vnic_res_chunk** %5, align 8
  br label %134

38:                                               ; preds = %29
  %39 = load i32, i32* %8, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %119

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @GFP_ATOMIC, align 4
  %44 = call %struct.usnic_vnic_res** @kcalloc(i32 %42, i32 8, i32 %43)
  %45 = load %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %11, align 8
  %46 = getelementptr inbounds %struct.usnic_vnic_res_chunk, %struct.usnic_vnic_res_chunk* %45, i32 0, i32 3
  store %struct.usnic_vnic_res** %44, %struct.usnic_vnic_res*** %46, align 8
  %47 = load %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %11, align 8
  %48 = getelementptr inbounds %struct.usnic_vnic_res_chunk, %struct.usnic_vnic_res_chunk* %47, i32 0, i32 3
  %49 = load %struct.usnic_vnic_res**, %struct.usnic_vnic_res*** %48, align 8
  %50 = icmp ne %struct.usnic_vnic_res** %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %41
  %52 = load %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %11, align 8
  %53 = call i32 @kfree(%struct.usnic_vnic_res_chunk* %52)
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  %56 = call %struct.usnic_vnic_res_chunk* @ERR_PTR(i32 %55)
  store %struct.usnic_vnic_res_chunk* %56, %struct.usnic_vnic_res_chunk** %5, align 8
  br label %134

57:                                               ; preds = %41
  %58 = load %struct.usnic_vnic*, %struct.usnic_vnic** %6, align 8
  %59 = getelementptr inbounds %struct.usnic_vnic, %struct.usnic_vnic* %58, i32 0, i32 0
  %60 = call i32 @spin_lock(i32* %59)
  %61 = load %struct.usnic_vnic*, %struct.usnic_vnic** %6, align 8
  %62 = getelementptr inbounds %struct.usnic_vnic, %struct.usnic_vnic* %61, i32 0, i32 1
  %63 = load %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.usnic_vnic_res_chunk, %struct.usnic_vnic_res_chunk* %63, i64 %65
  store %struct.usnic_vnic_res_chunk* %66, %struct.usnic_vnic_res_chunk** %10, align 8
  store i32 0, i32* %13, align 4
  br label %67

67:                                               ; preds = %112, %57
  %68 = load i32, i32* %13, align 4
  %69 = load %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %10, align 8
  %70 = getelementptr inbounds %struct.usnic_vnic_res_chunk, %struct.usnic_vnic_res_chunk* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %11, align 8
  %75 = getelementptr inbounds %struct.usnic_vnic_res_chunk, %struct.usnic_vnic_res_chunk* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %76, %77
  br label %79

79:                                               ; preds = %73, %67
  %80 = phi i1 [ false, %67 ], [ %78, %73 ]
  br i1 %80, label %81, label %115

81:                                               ; preds = %79
  %82 = load %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %10, align 8
  %83 = getelementptr inbounds %struct.usnic_vnic_res_chunk, %struct.usnic_vnic_res_chunk* %82, i32 0, i32 3
  %84 = load %struct.usnic_vnic_res**, %struct.usnic_vnic_res*** %83, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.usnic_vnic_res*, %struct.usnic_vnic_res** %84, i64 %86
  %88 = load %struct.usnic_vnic_res*, %struct.usnic_vnic_res** %87, align 8
  store %struct.usnic_vnic_res* %88, %struct.usnic_vnic_res** %12, align 8
  %89 = load %struct.usnic_vnic_res*, %struct.usnic_vnic_res** %12, align 8
  %90 = getelementptr inbounds %struct.usnic_vnic_res, %struct.usnic_vnic_res* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %111, label %93

93:                                               ; preds = %81
  %94 = load %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %10, align 8
  %95 = getelementptr inbounds %struct.usnic_vnic_res_chunk, %struct.usnic_vnic_res_chunk* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %95, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = load %struct.usnic_vnic_res*, %struct.usnic_vnic_res** %12, align 8
  %100 = getelementptr inbounds %struct.usnic_vnic_res, %struct.usnic_vnic_res* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  %101 = load %struct.usnic_vnic_res*, %struct.usnic_vnic_res** %12, align 8
  %102 = load %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %11, align 8
  %103 = getelementptr inbounds %struct.usnic_vnic_res_chunk, %struct.usnic_vnic_res_chunk* %102, i32 0, i32 3
  %104 = load %struct.usnic_vnic_res**, %struct.usnic_vnic_res*** %103, align 8
  %105 = load %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %11, align 8
  %106 = getelementptr inbounds %struct.usnic_vnic_res_chunk, %struct.usnic_vnic_res_chunk* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds %struct.usnic_vnic_res*, %struct.usnic_vnic_res** %104, i64 %109
  store %struct.usnic_vnic_res* %101, %struct.usnic_vnic_res** %110, align 8
  br label %111

111:                                              ; preds = %93, %81
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %13, align 4
  br label %67

115:                                              ; preds = %79
  %116 = load %struct.usnic_vnic*, %struct.usnic_vnic** %6, align 8
  %117 = getelementptr inbounds %struct.usnic_vnic, %struct.usnic_vnic* %116, i32 0, i32 0
  %118 = call i32 @spin_unlock(i32* %117)
  br label %119

119:                                              ; preds = %115, %38
  %120 = load i32, i32* %7, align 4
  %121 = load %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %11, align 8
  %122 = getelementptr inbounds %struct.usnic_vnic_res_chunk, %struct.usnic_vnic_res_chunk* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load %struct.usnic_vnic*, %struct.usnic_vnic** %6, align 8
  %124 = load %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %11, align 8
  %125 = getelementptr inbounds %struct.usnic_vnic_res_chunk, %struct.usnic_vnic_res_chunk* %124, i32 0, i32 2
  store %struct.usnic_vnic* %123, %struct.usnic_vnic** %125, align 8
  %126 = load %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %11, align 8
  %127 = getelementptr inbounds %struct.usnic_vnic_res_chunk, %struct.usnic_vnic_res_chunk* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = icmp ne i32 %128, %129
  %131 = zext i1 %130 to i32
  %132 = call i32 @WARN_ON(i32 %131)
  %133 = load %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %11, align 8
  store %struct.usnic_vnic_res_chunk* %133, %struct.usnic_vnic_res_chunk** %5, align 8
  br label %134

134:                                              ; preds = %119, %51, %34, %25
  %135 = load %struct.usnic_vnic_res_chunk*, %struct.usnic_vnic_res_chunk** %5, align 8
  ret %struct.usnic_vnic_res_chunk* %135
}

declare dso_local i32 @usnic_vnic_res_free_cnt(%struct.usnic_vnic*, i32) #1

declare dso_local %struct.usnic_vnic_res_chunk* @ERR_PTR(i32) #1

declare dso_local %struct.usnic_vnic_res_chunk* @kzalloc(i32, i32) #1

declare dso_local %struct.usnic_vnic_res** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.usnic_vnic_res_chunk*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
