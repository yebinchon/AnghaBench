; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_copy_sge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_copy_sge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.rvt_sge_state = type { %struct.rvt_sge }
%struct.rvt_sge = type { i64 }
%struct.rvt_dev_info = type { %struct.TYPE_4__, %struct.rvt_wss* }
%struct.TYPE_4__ = type { i32 }
%struct.rvt_wss = type { i32 }

@RVT_SGE_COPY_CACHELESS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@RVT_SGE_COPY_ADAPTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rvt_copy_sge(%struct.rvt_qp* %0, %struct.rvt_sge_state* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.rvt_qp*, align 8
  %8 = alloca %struct.rvt_sge_state*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.rvt_sge*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.rvt_dev_info*, align 8
  %18 = alloca %struct.rvt_wss*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.rvt_qp* %0, %struct.rvt_qp** %7, align 8
  store %struct.rvt_sge_state* %1, %struct.rvt_sge_state** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %21 = load %struct.rvt_sge_state*, %struct.rvt_sge_state** %8, align 8
  %22 = getelementptr inbounds %struct.rvt_sge_state, %struct.rvt_sge_state* %21, i32 0, i32 0
  store %struct.rvt_sge* %22, %struct.rvt_sge** %13, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %23 = load %struct.rvt_qp*, %struct.rvt_qp** %7, align 8
  %24 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.rvt_dev_info* @ib_to_rvt(i32 %26)
  store %struct.rvt_dev_info* %27, %struct.rvt_dev_info** %17, align 8
  %28 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %17, align 8
  %29 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %28, i32 0, i32 1
  %30 = load %struct.rvt_wss*, %struct.rvt_wss** %29, align 8
  store %struct.rvt_wss* %30, %struct.rvt_wss** %18, align 8
  %31 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %17, align 8
  %32 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %19, align 4
  %35 = load i32, i32* %19, align 4
  %36 = load i32, i32* @RVT_SGE_COPY_CACHELESS, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %6
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = icmp sge i32 %39, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %16, align 4
  br label %78

43:                                               ; preds = %6
  %44 = load i32, i32* %19, align 4
  %45 = load i32, i32* @RVT_SGE_COPY_ADAPTIVE, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %77

47:                                               ; preds = %43
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @PAGE_SIZE, align 4
  %50 = icmp sge i32 %48, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %47
  %52 = load %struct.rvt_wss*, %struct.rvt_wss** %18, align 8
  %53 = load %struct.rvt_sge*, %struct.rvt_sge** %13, align 8
  %54 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @wss_insert(%struct.rvt_wss* %52, i64 %55)
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @PAGE_SIZE, align 4
  %59 = mul nsw i32 2, %58
  %60 = icmp sge i32 %57, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %51
  %62 = load %struct.rvt_wss*, %struct.rvt_wss** %18, align 8
  %63 = load %struct.rvt_sge*, %struct.rvt_sge** %13, align 8
  %64 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* @PAGE_SIZE, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %65, %67
  %69 = call i32 @wss_insert(%struct.rvt_wss* %62, i64 %68)
  br label %70

70:                                               ; preds = %61, %51
  %71 = load %struct.rvt_wss*, %struct.rvt_wss** %18, align 8
  %72 = call i32 @wss_exceeds_threshold(%struct.rvt_wss* %71)
  store i32 %72, i32* %16, align 4
  br label %76

73:                                               ; preds = %47
  %74 = load %struct.rvt_wss*, %struct.rvt_wss** %18, align 8
  %75 = call i32 @wss_advance_clean_counter(%struct.rvt_wss* %74)
  br label %76

76:                                               ; preds = %73, %70
  br label %77

77:                                               ; preds = %76, %43
  br label %78

78:                                               ; preds = %77, %38
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = load i32, i32* %10, align 4
  %83 = icmp sgt i32 %82, 8
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* %10, align 4
  %86 = sub nsw i32 %85, 8
  store i32 %86, i32* %10, align 4
  br label %88

87:                                               ; preds = %81
  store i32 0, i32* %12, align 4
  store i32 1, i32* %15, align 4
  br label %88

88:                                               ; preds = %87, %84
  br label %89

89:                                               ; preds = %88, %78
  br label %90

90:                                               ; preds = %161, %89
  br label %91

91:                                               ; preds = %146, %90
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %158

94:                                               ; preds = %91
  %95 = load %struct.rvt_sge*, %struct.rvt_sge** %13, align 8
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @rvt_get_sge_length(%struct.rvt_sge* %95, i32 %96)
  store i32 %97, i32* %20, align 4
  %98 = load i32, i32* %20, align 4
  %99 = icmp eq i32 %98, 0
  %100 = zext i1 %99 to i32
  %101 = call i32 @WARN_ON_ONCE(i32 %100)
  %102 = load i32, i32* %15, align 4
  %103 = call i64 @unlikely(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %128

105:                                              ; preds = %94
  store i32 0, i32* %14, align 4
  br label %106

106:                                              ; preds = %124, %105
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %20, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %127

110:                                              ; preds = %106
  %111 = load i8*, i8** %9, align 8
  %112 = bitcast i8* %111 to i32*
  %113 = load i32, i32* %14, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.rvt_sge*, %struct.rvt_sge** %13, align 8
  %118 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = inttoptr i64 %119 to i32*
  %121 = load i32, i32* %14, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32 %116, i32* %123, align 4
  br label %124

124:                                              ; preds = %110
  %125 = load i32, i32* %14, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %14, align 4
  br label %106

127:                                              ; preds = %106
  br label %146

128:                                              ; preds = %94
  %129 = load i32, i32* %16, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %128
  %132 = load %struct.rvt_sge*, %struct.rvt_sge** %13, align 8
  %133 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i8*, i8** %9, align 8
  %136 = load i32, i32* %20, align 4
  %137 = call i32 @cacheless_memcpy(i64 %134, i8* %135, i32 %136)
  br label %145

138:                                              ; preds = %128
  %139 = load %struct.rvt_sge*, %struct.rvt_sge** %13, align 8
  %140 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i8*, i8** %9, align 8
  %143 = load i32, i32* %20, align 4
  %144 = call i32 @memcpy(i64 %141, i8* %142, i32 %143)
  br label %145

145:                                              ; preds = %138, %131
  br label %146

146:                                              ; preds = %145, %127
  %147 = load %struct.rvt_sge_state*, %struct.rvt_sge_state** %8, align 8
  %148 = load i32, i32* %20, align 4
  %149 = load i32, i32* %11, align 4
  %150 = call i32 @rvt_update_sge(%struct.rvt_sge_state* %147, i32 %148, i32 %149)
  %151 = load i32, i32* %20, align 4
  %152 = load i8*, i8** %9, align 8
  %153 = sext i32 %151 to i64
  %154 = getelementptr i8, i8* %152, i64 %153
  store i8* %154, i8** %9, align 8
  %155 = load i32, i32* %20, align 4
  %156 = load i32, i32* %10, align 4
  %157 = sub nsw i32 %156, %155
  store i32 %157, i32* %10, align 4
  br label %91

158:                                              ; preds = %91
  %159 = load i32, i32* %12, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  store i32 0, i32* %12, align 4
  store i32 1, i32* %15, align 4
  store i32 8, i32* %10, align 4
  br label %90

162:                                              ; preds = %158
  ret void
}

declare dso_local %struct.rvt_dev_info* @ib_to_rvt(i32) #1

declare dso_local i32 @wss_insert(%struct.rvt_wss*, i64) #1

declare dso_local i32 @wss_exceeds_threshold(%struct.rvt_wss*) #1

declare dso_local i32 @wss_advance_clean_counter(%struct.rvt_wss*) #1

declare dso_local i32 @rvt_get_sge_length(%struct.rvt_sge*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cacheless_memcpy(i64, i8*, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @rvt_update_sge(%struct.rvt_sge_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
