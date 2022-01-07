; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid_run_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid_run_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_head = type { i32, i64, %struct.r5conf*, %struct.r5dev*, i32, %struct.TYPE_2__ }
%struct.r5conf = type { i32, i32, i32 }
%struct.r5dev = type { i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.dma_async_tx_descriptor = type { i32 }
%struct.raid5_percpu = type { i32 }

@STRIPE_OP_BIOFILL = common dso_local global i32 0, align 4
@STRIPE_OP_COMPUTE_BLK = common dso_local global i32 0, align 4
@STRIPE_OP_RECONSTRUCT = common dso_local global i32 0, align 4
@STRIPE_OP_PREXOR = common dso_local global i32 0, align 4
@STRIPE_OP_PARTIAL_PARITY = common dso_local global i32 0, align 4
@STRIPE_OP_BIODRAIN = common dso_local global i32 0, align 4
@STRIPE_OP_CHECK = common dso_local global i32 0, align 4
@check_state_run = common dso_local global i64 0, align 8
@check_state_run_q = common dso_local global i64 0, align 8
@check_state_run_pq = common dso_local global i64 0, align 8
@R5_Overlap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stripe_head*, i64)* @raid_run_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid_run_ops(%struct.stripe_head* %0, i64 %1) #0 {
  %3 = alloca %struct.stripe_head*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dma_async_tx_descriptor*, align 8
  %9 = alloca %struct.r5conf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.raid5_percpu*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.r5dev*, align 8
  store %struct.stripe_head* %0, %struct.stripe_head** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %14 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %15 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %8, align 8
  %17 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %18 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %17, i32 0, i32 2
  %19 = load %struct.r5conf*, %struct.r5conf** %18, align 8
  store %struct.r5conf* %19, %struct.r5conf** %9, align 8
  %20 = load %struct.r5conf*, %struct.r5conf** %9, align 8
  %21 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = call i64 (...) @get_cpu()
  store i64 %23, i64* %12, align 8
  %24 = load %struct.r5conf*, %struct.r5conf** %9, align 8
  %25 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %12, align 8
  %28 = call %struct.raid5_percpu* @per_cpu_ptr(i32 %26, i64 %27)
  store %struct.raid5_percpu* %28, %struct.raid5_percpu** %11, align 8
  %29 = load i32, i32* @STRIPE_OP_BIOFILL, align 4
  %30 = call i64 @test_bit(i32 %29, i64* %4)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %2
  %33 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %34 = call i32 @ops_run_biofill(%struct.stripe_head* %33)
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %32, %2
  %38 = load i32, i32* @STRIPE_OP_COMPUTE_BLK, align 4
  %39 = call i64 @test_bit(i32 %38, i64* %4)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %80

41:                                               ; preds = %37
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 6
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %46 = load %struct.raid5_percpu*, %struct.raid5_percpu** %11, align 8
  %47 = call %struct.dma_async_tx_descriptor* @ops_run_compute5(%struct.stripe_head* %45, %struct.raid5_percpu* %46)
  store %struct.dma_async_tx_descriptor* %47, %struct.dma_async_tx_descriptor** %8, align 8
  br label %69

48:                                               ; preds = %41
  %49 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %50 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %56 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54, %48
  %61 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %62 = load %struct.raid5_percpu*, %struct.raid5_percpu** %11, align 8
  %63 = call %struct.dma_async_tx_descriptor* @ops_run_compute6_1(%struct.stripe_head* %61, %struct.raid5_percpu* %62)
  store %struct.dma_async_tx_descriptor* %63, %struct.dma_async_tx_descriptor** %8, align 8
  br label %68

64:                                               ; preds = %54
  %65 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %66 = load %struct.raid5_percpu*, %struct.raid5_percpu** %11, align 8
  %67 = call %struct.dma_async_tx_descriptor* @ops_run_compute6_2(%struct.stripe_head* %65, %struct.raid5_percpu* %66)
  store %struct.dma_async_tx_descriptor* %67, %struct.dma_async_tx_descriptor** %8, align 8
  br label %68

68:                                               ; preds = %64, %60
  br label %69

69:                                               ; preds = %68, %44
  %70 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %71 = icmp ne %struct.dma_async_tx_descriptor* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load i32, i32* @STRIPE_OP_RECONSTRUCT, align 4
  %74 = call i64 @test_bit(i32 %73, i64* %4)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %78 = call i32 @async_tx_ack(%struct.dma_async_tx_descriptor* %77)
  br label %79

79:                                               ; preds = %76, %72, %69
  br label %80

80:                                               ; preds = %79, %37
  %81 = load i32, i32* @STRIPE_OP_PREXOR, align 4
  %82 = call i64 @test_bit(i32 %81, i64* %4)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %80
  %85 = load i32, i32* %10, align 4
  %86 = icmp slt i32 %85, 6
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %89 = load %struct.raid5_percpu*, %struct.raid5_percpu** %11, align 8
  %90 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %91 = call %struct.dma_async_tx_descriptor* @ops_run_prexor5(%struct.stripe_head* %88, %struct.raid5_percpu* %89, %struct.dma_async_tx_descriptor* %90)
  store %struct.dma_async_tx_descriptor* %91, %struct.dma_async_tx_descriptor** %8, align 8
  br label %97

92:                                               ; preds = %84
  %93 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %94 = load %struct.raid5_percpu*, %struct.raid5_percpu** %11, align 8
  %95 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %96 = call %struct.dma_async_tx_descriptor* @ops_run_prexor6(%struct.stripe_head* %93, %struct.raid5_percpu* %94, %struct.dma_async_tx_descriptor* %95)
  store %struct.dma_async_tx_descriptor* %96, %struct.dma_async_tx_descriptor** %8, align 8
  br label %97

97:                                               ; preds = %92, %87
  br label %98

98:                                               ; preds = %97, %80
  %99 = load i32, i32* @STRIPE_OP_PARTIAL_PARITY, align 4
  %100 = call i64 @test_bit(i32 %99, i64* %4)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %104 = load %struct.raid5_percpu*, %struct.raid5_percpu** %11, align 8
  %105 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %106 = call %struct.dma_async_tx_descriptor* @ops_run_partial_parity(%struct.stripe_head* %103, %struct.raid5_percpu* %104, %struct.dma_async_tx_descriptor* %105)
  store %struct.dma_async_tx_descriptor* %106, %struct.dma_async_tx_descriptor** %8, align 8
  br label %107

107:                                              ; preds = %102, %98
  %108 = load i32, i32* @STRIPE_OP_BIODRAIN, align 4
  %109 = call i64 @test_bit(i32 %108, i64* %4)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %113 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %114 = call %struct.dma_async_tx_descriptor* @ops_run_biodrain(%struct.stripe_head* %112, %struct.dma_async_tx_descriptor* %113)
  store %struct.dma_async_tx_descriptor* %114, %struct.dma_async_tx_descriptor** %8, align 8
  %115 = load i32, i32* %5, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %111, %107
  %118 = load i32, i32* @STRIPE_OP_RECONSTRUCT, align 4
  %119 = call i64 @test_bit(i32 %118, i64* %4)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %135

121:                                              ; preds = %117
  %122 = load i32, i32* %10, align 4
  %123 = icmp slt i32 %122, 6
  br i1 %123, label %124, label %129

124:                                              ; preds = %121
  %125 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %126 = load %struct.raid5_percpu*, %struct.raid5_percpu** %11, align 8
  %127 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %128 = call i32 @ops_run_reconstruct5(%struct.stripe_head* %125, %struct.raid5_percpu* %126, %struct.dma_async_tx_descriptor* %127)
  br label %134

129:                                              ; preds = %121
  %130 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %131 = load %struct.raid5_percpu*, %struct.raid5_percpu** %11, align 8
  %132 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %133 = call i32 @ops_run_reconstruct6(%struct.stripe_head* %130, %struct.raid5_percpu* %131, %struct.dma_async_tx_descriptor* %132)
  br label %134

134:                                              ; preds = %129, %124
  br label %135

135:                                              ; preds = %134, %117
  %136 = load i32, i32* @STRIPE_OP_CHECK, align 4
  %137 = call i64 @test_bit(i32 %136, i64* %4)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %174

139:                                              ; preds = %135
  %140 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %141 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @check_state_run, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %139
  %146 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %147 = load %struct.raid5_percpu*, %struct.raid5_percpu** %11, align 8
  %148 = call i32 @ops_run_check_p(%struct.stripe_head* %146, %struct.raid5_percpu* %147)
  br label %173

149:                                              ; preds = %139
  %150 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %151 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @check_state_run_q, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %149
  %156 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %157 = load %struct.raid5_percpu*, %struct.raid5_percpu** %11, align 8
  %158 = call i32 @ops_run_check_pq(%struct.stripe_head* %156, %struct.raid5_percpu* %157, i32 0)
  br label %172

159:                                              ; preds = %149
  %160 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %161 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @check_state_run_pq, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %159
  %166 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %167 = load %struct.raid5_percpu*, %struct.raid5_percpu** %11, align 8
  %168 = call i32 @ops_run_check_pq(%struct.stripe_head* %166, %struct.raid5_percpu* %167, i32 1)
  br label %171

169:                                              ; preds = %159
  %170 = call i32 (...) @BUG()
  br label %171

171:                                              ; preds = %169, %165
  br label %172

172:                                              ; preds = %171, %155
  br label %173

173:                                              ; preds = %172, %145
  br label %174

174:                                              ; preds = %173, %135
  %175 = load i32, i32* %5, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %208

177:                                              ; preds = %174
  %178 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %179 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 8
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %208, label %182

182:                                              ; preds = %177
  %183 = load i32, i32* %7, align 4
  store i32 %183, i32* %6, align 4
  br label %184

184:                                              ; preds = %206, %182
  %185 = load i32, i32* %6, align 4
  %186 = add nsw i32 %185, -1
  store i32 %186, i32* %6, align 4
  %187 = icmp ne i32 %185, 0
  br i1 %187, label %188, label %207

188:                                              ; preds = %184
  %189 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %190 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %189, i32 0, i32 3
  %191 = load %struct.r5dev*, %struct.r5dev** %190, align 8
  %192 = load i32, i32* %6, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %191, i64 %193
  store %struct.r5dev* %194, %struct.r5dev** %13, align 8
  %195 = load i32, i32* @R5_Overlap, align 4
  %196 = load %struct.r5dev*, %struct.r5dev** %13, align 8
  %197 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %196, i32 0, i32 0
  %198 = call i64 @test_and_clear_bit(i32 %195, i32* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %188
  %201 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %202 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %201, i32 0, i32 2
  %203 = load %struct.r5conf*, %struct.r5conf** %202, align 8
  %204 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %203, i32 0, i32 1
  %205 = call i32 @wake_up(i32* %204)
  br label %206

206:                                              ; preds = %200, %188
  br label %184

207:                                              ; preds = %184
  br label %208

208:                                              ; preds = %207, %177, %174
  %209 = call i32 (...) @put_cpu()
  ret void
}

declare dso_local i64 @get_cpu(...) #1

declare dso_local %struct.raid5_percpu* @per_cpu_ptr(i32, i64) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @ops_run_biofill(%struct.stripe_head*) #1

declare dso_local %struct.dma_async_tx_descriptor* @ops_run_compute5(%struct.stripe_head*, %struct.raid5_percpu*) #1

declare dso_local %struct.dma_async_tx_descriptor* @ops_run_compute6_1(%struct.stripe_head*, %struct.raid5_percpu*) #1

declare dso_local %struct.dma_async_tx_descriptor* @ops_run_compute6_2(%struct.stripe_head*, %struct.raid5_percpu*) #1

declare dso_local i32 @async_tx_ack(%struct.dma_async_tx_descriptor*) #1

declare dso_local %struct.dma_async_tx_descriptor* @ops_run_prexor5(%struct.stripe_head*, %struct.raid5_percpu*, %struct.dma_async_tx_descriptor*) #1

declare dso_local %struct.dma_async_tx_descriptor* @ops_run_prexor6(%struct.stripe_head*, %struct.raid5_percpu*, %struct.dma_async_tx_descriptor*) #1

declare dso_local %struct.dma_async_tx_descriptor* @ops_run_partial_parity(%struct.stripe_head*, %struct.raid5_percpu*, %struct.dma_async_tx_descriptor*) #1

declare dso_local %struct.dma_async_tx_descriptor* @ops_run_biodrain(%struct.stripe_head*, %struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @ops_run_reconstruct5(%struct.stripe_head*, %struct.raid5_percpu*, %struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @ops_run_reconstruct6(%struct.stripe_head*, %struct.raid5_percpu*, %struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @ops_run_check_p(%struct.stripe_head*, %struct.raid5_percpu*) #1

declare dso_local i32 @ops_run_check_pq(%struct.stripe_head*, %struct.raid5_percpu*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
