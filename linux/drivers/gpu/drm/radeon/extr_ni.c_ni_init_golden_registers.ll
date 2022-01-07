; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni.c_ni_init_golden_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni.c_ni_init_golden_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@cayman_golden_registers = common dso_local global i32 0, align 4
@cayman_golden_registers2 = common dso_local global i32 0, align 4
@dvst_golden_registers = common dso_local global i32 0, align 4
@dvst_golden_registers2 = common dso_local global i32 0, align 4
@scrapper_golden_registers = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @ni_init_golden_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_init_golden_registers(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %3 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %4 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %173 [
    i32 128, label %6
    i32 129, label %17
  ]

6:                                                ; preds = %1
  %7 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %8 = load i32, i32* @cayman_golden_registers, align 4
  %9 = load i32, i32* @cayman_golden_registers, align 4
  %10 = call i32 @ARRAY_SIZE(i32 %9)
  %11 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %7, i32 %8, i32 %10)
  %12 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %13 = load i32, i32* @cayman_golden_registers2, align 4
  %14 = load i32, i32* @cayman_golden_registers2, align 4
  %15 = call i32 @ARRAY_SIZE(i32 %14)
  %16 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %12, i32 %13, i32 %15)
  br label %174

17:                                               ; preds = %1
  %18 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 39168
  br i1 %23, label %150, label %24

24:                                               ; preds = %17
  %25 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %26 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 39169
  br i1 %30, label %150, label %31

31:                                               ; preds = %24
  %32 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %33 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 39171
  br i1 %37, label %150, label %38

38:                                               ; preds = %31
  %39 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %40 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 39172
  br i1 %44, label %150, label %45

45:                                               ; preds = %38
  %46 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %47 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 39173
  br i1 %51, label %150, label %52

52:                                               ; preds = %45
  %53 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %54 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 39174
  br i1 %58, label %150, label %59

59:                                               ; preds = %52
  %60 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %61 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 39175
  br i1 %65, label %150, label %66

66:                                               ; preds = %59
  %67 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %68 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 39176
  br i1 %72, label %150, label %73

73:                                               ; preds = %66
  %74 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %75 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 39177
  br i1 %79, label %150, label %80

80:                                               ; preds = %73
  %81 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %82 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 39178
  br i1 %86, label %150, label %87

87:                                               ; preds = %80
  %88 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %89 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 39179
  br i1 %93, label %150, label %94

94:                                               ; preds = %87
  %95 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %96 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 39180
  br i1 %100, label %150, label %101

101:                                              ; preds = %94
  %102 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %103 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %102, i32 0, i32 1
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 39181
  br i1 %107, label %150, label %108

108:                                              ; preds = %101
  %109 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %110 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %109, i32 0, i32 1
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 39182
  br i1 %114, label %150, label %115

115:                                              ; preds = %108
  %116 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %117 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %116, i32 0, i32 1
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 39183
  br i1 %121, label %150, label %122

122:                                              ; preds = %115
  %123 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %124 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %123, i32 0, i32 1
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %127, 39184
  br i1 %128, label %150, label %129

129:                                              ; preds = %122
  %130 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %131 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %130, i32 0, i32 1
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %134, 39187
  br i1 %135, label %150, label %136

136:                                              ; preds = %129
  %137 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %138 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %137, i32 0, i32 1
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 39191
  br i1 %142, label %150, label %143

143:                                              ; preds = %136
  %144 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %145 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %144, i32 0, i32 1
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 39192
  br i1 %149, label %150, label %161

150:                                              ; preds = %143, %136, %129, %122, %115, %108, %101, %94, %87, %80, %73, %66, %59, %52, %45, %38, %31, %24, %17
  %151 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %152 = load i32, i32* @dvst_golden_registers, align 4
  %153 = load i32, i32* @dvst_golden_registers, align 4
  %154 = call i32 @ARRAY_SIZE(i32 %153)
  %155 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %151, i32 %152, i32 %154)
  %156 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %157 = load i32, i32* @dvst_golden_registers2, align 4
  %158 = load i32, i32* @dvst_golden_registers2, align 4
  %159 = call i32 @ARRAY_SIZE(i32 %158)
  %160 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %156, i32 %157, i32 %159)
  br label %172

161:                                              ; preds = %143
  %162 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %163 = load i32, i32* @scrapper_golden_registers, align 4
  %164 = load i32, i32* @scrapper_golden_registers, align 4
  %165 = call i32 @ARRAY_SIZE(i32 %164)
  %166 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %162, i32 %163, i32 %165)
  %167 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %168 = load i32, i32* @dvst_golden_registers2, align 4
  %169 = load i32, i32* @dvst_golden_registers2, align 4
  %170 = call i32 @ARRAY_SIZE(i32 %169)
  %171 = call i32 @radeon_program_register_sequence(%struct.radeon_device* %167, i32 %168, i32 %170)
  br label %172

172:                                              ; preds = %161, %150
  br label %174

173:                                              ; preds = %1
  br label %174

174:                                              ; preds = %173, %172, %6
  ret void
}

declare dso_local i32 @radeon_program_register_sequence(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
