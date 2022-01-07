; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_pip_irq_cmd_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_pip_irq_cmd_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.cyapa_pip_cmd_states }
%struct.cyapa_pip_cmd_states = type { i32, i32*, i32, i32, i32, i64, i64 (%struct.cyapa.0*, i32, i32)* }
%struct.cyapa.0 = type opaque

@PIP_RESP_LENGTH_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cyapa_pip_irq_cmd_handler(%struct.cyapa* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cyapa*, align 8
  %4 = alloca %struct.cyapa_pip_cmd_states*, align 8
  %5 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %3, align 8
  %6 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %7 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.cyapa_pip_cmd_states* %8, %struct.cyapa_pip_cmd_states** %4, align 8
  %9 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %4, align 8
  %10 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %9, i32 0, i32 3
  %11 = call i64 @atomic_read(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %152

13:                                               ; preds = %1
  %14 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %4, align 8
  %15 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %153

19:                                               ; preds = %13
  %20 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %21 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %4, align 8
  %22 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PIP_RESP_LENGTH_SIZE, align 4
  %25 = call i32 @cyapa_i2c_pip_read(%struct.cyapa* %20, i32 %23, i32 %24)
  %26 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %4, align 8
  %27 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @get_unaligned_le16(i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @PIP_RESP_LENGTH_SIZE, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %19
  %34 = load i32, i32* @PIP_RESP_LENGTH_SIZE, align 4
  br label %37

35:                                               ; preds = %19
  %36 = load i32, i32* %5, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @PIP_RESP_LENGTH_SIZE, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %44 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %4, align 8
  %45 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @cyapa_i2c_pip_read(%struct.cyapa* %43, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %42, %37
  %50 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %4, align 8
  %51 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %50, i32 0, i32 6
  %52 = load i64 (%struct.cyapa.0*, i32, i32)*, i64 (%struct.cyapa.0*, i32, i32)** %51, align 8
  %53 = icmp ne i64 (%struct.cyapa.0*, i32, i32)* %52, null
  br i1 %53, label %54, label %66

54:                                               ; preds = %49
  %55 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %4, align 8
  %56 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %55, i32 0, i32 6
  %57 = load i64 (%struct.cyapa.0*, i32, i32)*, i64 (%struct.cyapa.0*, i32, i32)** %56, align 8
  %58 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %59 = bitcast %struct.cyapa* %58 to %struct.cyapa.0*
  %60 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %4, align 8
  %61 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i64 %57(%struct.cyapa.0* %59, i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %105, label %66

66:                                               ; preds = %54, %49
  store i32 0, i32* %5, align 4
  %67 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %4, align 8
  %68 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %4, align 8
  %73 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %71, %66
  %77 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %78 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %4, align 8
  %79 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %4, align 8
  %82 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %81, i32 0, i32 6
  %83 = load i64 (%struct.cyapa.0*, i32, i32)*, i64 (%struct.cyapa.0*, i32, i32)** %82, align 8
  %84 = bitcast i64 (%struct.cyapa.0*, i32, i32)* %83 to i64 (%struct.cyapa*, i32, i32)*
  %85 = call i32 @cyapa_empty_pip_output_data(%struct.cyapa* %77, i64 %80, i32* %5, i64 (%struct.cyapa*, i32, i32)* %84)
  %86 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %4, align 8
  %87 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %104

90:                                               ; preds = %76
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %90
  %94 = load i32, i32* %5, align 4
  %95 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %4, align 8
  %96 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  store i32 %94, i32* %97, align 4
  %98 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %4, align 8
  %99 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %98, i32 0, i32 3
  %100 = call i32 @atomic_dec(i32* %99)
  %101 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %4, align 8
  %102 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %101, i32 0, i32 2
  %103 = call i32 @complete(i32* %102)
  br label %104

104:                                              ; preds = %93, %90, %76
  store i32 0, i32* %2, align 4
  br label %153

105:                                              ; preds = %54
  %106 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %4, align 8
  %107 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %145

110:                                              ; preds = %105
  %111 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %4, align 8
  %112 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %145

115:                                              ; preds = %110
  %116 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %4, align 8
  %117 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %5, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %115
  %123 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %4, align 8
  %124 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %125, align 4
  br label %129

127:                                              ; preds = %115
  %128 = load i32, i32* %5, align 4
  br label %129

129:                                              ; preds = %127, %122
  %130 = phi i32 [ %126, %122 ], [ %128, %127 ]
  %131 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %4, align 8
  %132 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  store i32 %130, i32* %133, align 4
  %134 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %4, align 8
  %135 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %134, i32 0, i32 5
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %4, align 8
  %138 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %4, align 8
  %141 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @memcpy(i64 %136, i32 %139, i32 %143)
  br label %145

145:                                              ; preds = %129, %110, %105
  %146 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %4, align 8
  %147 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %146, i32 0, i32 3
  %148 = call i32 @atomic_dec(i32* %147)
  %149 = load %struct.cyapa_pip_cmd_states*, %struct.cyapa_pip_cmd_states** %4, align 8
  %150 = getelementptr inbounds %struct.cyapa_pip_cmd_states, %struct.cyapa_pip_cmd_states* %149, i32 0, i32 2
  %151 = call i32 @complete(i32* %150)
  store i32 0, i32* %2, align 4
  br label %153

152:                                              ; preds = %1
  store i32 1, i32* %2, align 4
  br label %153

153:                                              ; preds = %152, %145, %104, %18
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @cyapa_i2c_pip_read(%struct.cyapa*, i32, i32) #1

declare dso_local i32 @get_unaligned_le16(i32) #1

declare dso_local i32 @cyapa_empty_pip_output_data(%struct.cyapa*, i64, i32*, i64 (%struct.cyapa*, i32, i32)*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
