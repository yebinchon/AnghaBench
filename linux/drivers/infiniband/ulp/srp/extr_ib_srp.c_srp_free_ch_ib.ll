; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_free_ch_ib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_free_ch_ib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_target_port = type { i32, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { %struct.srp_device* }
%struct.srp_device = type { i64, i64 }
%struct.srp_rdma_ch = type { i32*, i32*, i32*, i32*, i32*, i32*, i64, i64, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.srp_target_port*, %struct.srp_rdma_ch*)* @srp_free_ch_ib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srp_free_ch_ib(%struct.srp_target_port* %0, %struct.srp_rdma_ch* %1) #0 {
  %3 = alloca %struct.srp_target_port*, align 8
  %4 = alloca %struct.srp_rdma_ch*, align 8
  %5 = alloca %struct.srp_device*, align 8
  %6 = alloca i32, align 4
  store %struct.srp_target_port* %0, %struct.srp_target_port** %3, align 8
  store %struct.srp_rdma_ch* %1, %struct.srp_rdma_ch** %4, align 8
  %7 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %8 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.srp_device*, %struct.srp_device** %10, align 8
  store %struct.srp_device* %11, %struct.srp_device** %5, align 8
  %12 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %4, align 8
  %13 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %12, i32 0, i32 5
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %179

17:                                               ; preds = %2
  %18 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %19 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %17
  %23 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %4, align 8
  %24 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %23, i32 0, i32 9
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %4, align 8
  %30 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %29, i32 0, i32 9
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @rdma_destroy_id(i32* %32)
  %34 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %4, align 8
  %35 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %34, i32 0, i32 9
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %28, %22
  br label %54

38:                                               ; preds = %17
  %39 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %4, align 8
  %40 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %39, i32 0, i32 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %38
  %45 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %4, align 8
  %46 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %45, i32 0, i32 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @ib_destroy_cm_id(i32* %48)
  %50 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %4, align 8
  %51 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %50, i32 0, i32 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i32* null, i32** %52, align 8
  br label %53

53:                                               ; preds = %44, %38
  br label %54

54:                                               ; preds = %53, %37
  %55 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %4, align 8
  %56 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %55, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  br label %179

60:                                               ; preds = %54
  %61 = load %struct.srp_device*, %struct.srp_device** %5, align 8
  %62 = getelementptr inbounds %struct.srp_device, %struct.srp_device* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %60
  %66 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %4, align 8
  %67 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %66, i32 0, i32 7
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %4, align 8
  %72 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %71, i32 0, i32 7
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @srp_destroy_fr_pool(i64 %73)
  br label %75

75:                                               ; preds = %70, %65
  br label %93

76:                                               ; preds = %60
  %77 = load %struct.srp_device*, %struct.srp_device** %5, align 8
  %78 = getelementptr inbounds %struct.srp_device, %struct.srp_device* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %76
  %82 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %4, align 8
  %83 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %82, i32 0, i32 6
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %4, align 8
  %88 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %87, i32 0, i32 6
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @ib_destroy_fmr_pool(i64 %89)
  br label %91

91:                                               ; preds = %86, %81
  br label %92

92:                                               ; preds = %91, %76
  br label %93

93:                                               ; preds = %92, %75
  %94 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %4, align 8
  %95 = call i32 @srp_destroy_qp(%struct.srp_rdma_ch* %94)
  %96 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %4, align 8
  %97 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @ib_free_cq(i32* %98)
  %100 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %4, align 8
  %101 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @ib_free_cq(i32* %102)
  %104 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %4, align 8
  %105 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %104, i32 0, i32 5
  store i32* null, i32** %105, align 8
  %106 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %4, align 8
  %107 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %106, i32 0, i32 4
  store i32* null, i32** %107, align 8
  %108 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %4, align 8
  %109 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %108, i32 0, i32 2
  store i32* null, i32** %109, align 8
  %110 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %4, align 8
  %111 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %110, i32 0, i32 3
  store i32* null, i32** %111, align 8
  %112 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %4, align 8
  %113 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %145

116:                                              ; preds = %93
  store i32 0, i32* %6, align 4
  br label %117

117:                                              ; preds = %135, %116
  %118 = load i32, i32* %6, align 4
  %119 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %120 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp slt i32 %118, %121
  br i1 %122, label %123, label %138

123:                                              ; preds = %117
  %124 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %125 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %124, i32 0, i32 1
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %4, align 8
  %128 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @srp_free_iu(%struct.TYPE_6__* %126, i32 %133)
  br label %135

135:                                              ; preds = %123
  %136 = load i32, i32* %6, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %6, align 4
  br label %117

138:                                              ; preds = %117
  %139 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %4, align 8
  %140 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @kfree(i32* %141)
  %143 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %4, align 8
  %144 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %143, i32 0, i32 1
  store i32* null, i32** %144, align 8
  br label %145

145:                                              ; preds = %138, %93
  %146 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %4, align 8
  %147 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %179

150:                                              ; preds = %145
  store i32 0, i32* %6, align 4
  br label %151

151:                                              ; preds = %169, %150
  %152 = load i32, i32* %6, align 4
  %153 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %154 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp slt i32 %152, %155
  br i1 %156, label %157, label %172

157:                                              ; preds = %151
  %158 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %159 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %158, i32 0, i32 1
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %159, align 8
  %161 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %4, align 8
  %162 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %6, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @srp_free_iu(%struct.TYPE_6__* %160, i32 %167)
  br label %169

169:                                              ; preds = %157
  %170 = load i32, i32* %6, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %6, align 4
  br label %151

172:                                              ; preds = %151
  %173 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %4, align 8
  %174 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = call i32 @kfree(i32* %175)
  %177 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %4, align 8
  %178 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %177, i32 0, i32 0
  store i32* null, i32** %178, align 8
  br label %179

179:                                              ; preds = %16, %59, %172, %145
  ret void
}

declare dso_local i32 @rdma_destroy_id(i32*) #1

declare dso_local i32 @ib_destroy_cm_id(i32*) #1

declare dso_local i32 @srp_destroy_fr_pool(i64) #1

declare dso_local i32 @ib_destroy_fmr_pool(i64) #1

declare dso_local i32 @srp_destroy_qp(%struct.srp_rdma_ch*) #1

declare dso_local i32 @ib_free_cq(i32*) #1

declare dso_local i32 @srp_free_iu(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
