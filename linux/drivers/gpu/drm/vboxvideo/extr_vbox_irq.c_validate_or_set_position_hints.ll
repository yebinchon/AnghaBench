; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbox_irq.c_validate_or_set_position_hints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbox_irq.c_validate_or_set_position_hints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbox_private = type { i32, %struct.vbva_modehint* }
%struct.vbva_modehint = type { i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vbox_private*)* @validate_or_set_position_hints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @validate_or_set_position_hints(%struct.vbox_private* %0) #0 {
  %2 = alloca %struct.vbox_private*, align 8
  %3 = alloca %struct.vbva_modehint*, align 8
  %4 = alloca %struct.vbva_modehint*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vbox_private* %0, %struct.vbox_private** %2, align 8
  store i32 1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %121, %1
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.vbox_private*, %struct.vbox_private** %2, align 8
  %12 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %124

15:                                               ; preds = %9
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %117, %15
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %120

20:                                               ; preds = %16
  %21 = load %struct.vbox_private*, %struct.vbox_private** %2, align 8
  %22 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %21, i32 0, i32 1
  %23 = load %struct.vbva_modehint*, %struct.vbva_modehint** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.vbva_modehint, %struct.vbva_modehint* %23, i64 %25
  store %struct.vbva_modehint* %26, %struct.vbva_modehint** %3, align 8
  %27 = load %struct.vbox_private*, %struct.vbox_private** %2, align 8
  %28 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %27, i32 0, i32 1
  %29 = load %struct.vbva_modehint*, %struct.vbva_modehint** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.vbva_modehint, %struct.vbva_modehint* %29, i64 %31
  store %struct.vbva_modehint* %32, %struct.vbva_modehint** %4, align 8
  %33 = load %struct.vbva_modehint*, %struct.vbva_modehint** %3, align 8
  %34 = getelementptr inbounds %struct.vbva_modehint, %struct.vbva_modehint* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %116

37:                                               ; preds = %20
  %38 = load %struct.vbva_modehint*, %struct.vbva_modehint** %4, align 8
  %39 = getelementptr inbounds %struct.vbva_modehint, %struct.vbva_modehint* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %116

42:                                               ; preds = %37
  %43 = load %struct.vbva_modehint*, %struct.vbva_modehint** %3, align 8
  %44 = getelementptr inbounds %struct.vbva_modehint, %struct.vbva_modehint* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp sge i32 %45, 65535
  br i1 %46, label %114, label %47

47:                                               ; preds = %42
  %48 = load %struct.vbva_modehint*, %struct.vbva_modehint** %3, align 8
  %49 = getelementptr inbounds %struct.vbva_modehint, %struct.vbva_modehint* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp sge i32 %50, 65535
  br i1 %51, label %114, label %52

52:                                               ; preds = %47
  %53 = load %struct.vbva_modehint*, %struct.vbva_modehint** %4, align 8
  %54 = getelementptr inbounds %struct.vbva_modehint, %struct.vbva_modehint* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp sge i32 %55, 65535
  br i1 %56, label %114, label %57

57:                                               ; preds = %52
  %58 = load %struct.vbva_modehint*, %struct.vbva_modehint** %4, align 8
  %59 = getelementptr inbounds %struct.vbva_modehint, %struct.vbva_modehint* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp sge i32 %60, 65535
  br i1 %61, label %114, label %62

62:                                               ; preds = %57
  %63 = load %struct.vbva_modehint*, %struct.vbva_modehint** %3, align 8
  %64 = getelementptr inbounds %struct.vbva_modehint, %struct.vbva_modehint* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.vbva_modehint*, %struct.vbva_modehint** %4, align 8
  %67 = getelementptr inbounds %struct.vbva_modehint, %struct.vbva_modehint* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.vbva_modehint*, %struct.vbva_modehint** %4, align 8
  %70 = getelementptr inbounds %struct.vbva_modehint, %struct.vbva_modehint* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, 36863
  %73 = add nsw i32 %68, %72
  %74 = icmp slt i32 %65, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %62
  %76 = load %struct.vbva_modehint*, %struct.vbva_modehint** %3, align 8
  %77 = getelementptr inbounds %struct.vbva_modehint, %struct.vbva_modehint* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.vbva_modehint*, %struct.vbva_modehint** %3, align 8
  %80 = getelementptr inbounds %struct.vbva_modehint, %struct.vbva_modehint* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = and i32 %81, 36863
  %83 = add nsw i32 %78, %82
  %84 = load %struct.vbva_modehint*, %struct.vbva_modehint** %4, align 8
  %85 = getelementptr inbounds %struct.vbva_modehint, %struct.vbva_modehint* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp sgt i32 %83, %86
  br i1 %87, label %114, label %88

88:                                               ; preds = %75, %62
  %89 = load %struct.vbva_modehint*, %struct.vbva_modehint** %3, align 8
  %90 = getelementptr inbounds %struct.vbva_modehint, %struct.vbva_modehint* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.vbva_modehint*, %struct.vbva_modehint** %4, align 8
  %93 = getelementptr inbounds %struct.vbva_modehint, %struct.vbva_modehint* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.vbva_modehint*, %struct.vbva_modehint** %4, align 8
  %96 = getelementptr inbounds %struct.vbva_modehint, %struct.vbva_modehint* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, 36863
  %99 = add nsw i32 %94, %98
  %100 = icmp slt i32 %91, %99
  br i1 %100, label %101, label %115

101:                                              ; preds = %88
  %102 = load %struct.vbva_modehint*, %struct.vbva_modehint** %3, align 8
  %103 = getelementptr inbounds %struct.vbva_modehint, %struct.vbva_modehint* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.vbva_modehint*, %struct.vbva_modehint** %3, align 8
  %106 = getelementptr inbounds %struct.vbva_modehint, %struct.vbva_modehint* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, 36863
  %109 = add nsw i32 %104, %108
  %110 = load %struct.vbva_modehint*, %struct.vbva_modehint** %4, align 8
  %111 = getelementptr inbounds %struct.vbva_modehint, %struct.vbva_modehint* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp sgt i32 %109, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %101, %75, %57, %52, %47, %42
  store i32 0, i32* %5, align 4
  br label %115

115:                                              ; preds = %114, %101, %88
  br label %116

116:                                              ; preds = %115, %37, %20
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %8, align 4
  br label %16

120:                                              ; preds = %16
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %7, align 4
  br label %9

124:                                              ; preds = %9
  %125 = load i32, i32* %5, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %176, label %127

127:                                              ; preds = %124
  store i32 0, i32* %7, align 4
  br label %128

128:                                              ; preds = %172, %127
  %129 = load i32, i32* %7, align 4
  %130 = load %struct.vbox_private*, %struct.vbox_private** %2, align 8
  %131 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp slt i32 %129, %132
  br i1 %133, label %134, label %175

134:                                              ; preds = %128
  %135 = load %struct.vbox_private*, %struct.vbox_private** %2, align 8
  %136 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %135, i32 0, i32 1
  %137 = load %struct.vbva_modehint*, %struct.vbva_modehint** %136, align 8
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.vbva_modehint, %struct.vbva_modehint* %137, i64 %139
  %141 = getelementptr inbounds %struct.vbva_modehint, %struct.vbva_modehint* %140, i32 0, i32 4
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %171

144:                                              ; preds = %134
  %145 = load i32, i32* %6, align 4
  %146 = load %struct.vbox_private*, %struct.vbox_private** %2, align 8
  %147 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %146, i32 0, i32 1
  %148 = load %struct.vbva_modehint*, %struct.vbva_modehint** %147, align 8
  %149 = load i32, i32* %7, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.vbva_modehint, %struct.vbva_modehint* %148, i64 %150
  %152 = getelementptr inbounds %struct.vbva_modehint, %struct.vbva_modehint* %151, i32 0, i32 0
  store i32 %145, i32* %152, align 8
  %153 = load %struct.vbox_private*, %struct.vbox_private** %2, align 8
  %154 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %153, i32 0, i32 1
  %155 = load %struct.vbva_modehint*, %struct.vbva_modehint** %154, align 8
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.vbva_modehint, %struct.vbva_modehint* %155, i64 %157
  %159 = getelementptr inbounds %struct.vbva_modehint, %struct.vbva_modehint* %158, i32 0, i32 1
  store i32 0, i32* %159, align 4
  %160 = load %struct.vbox_private*, %struct.vbox_private** %2, align 8
  %161 = getelementptr inbounds %struct.vbox_private, %struct.vbox_private* %160, i32 0, i32 1
  %162 = load %struct.vbva_modehint*, %struct.vbva_modehint** %161, align 8
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.vbva_modehint, %struct.vbva_modehint* %162, i64 %164
  %166 = getelementptr inbounds %struct.vbva_modehint, %struct.vbva_modehint* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = and i32 %167, 36863
  %169 = load i32, i32* %6, align 4
  %170 = add nsw i32 %169, %168
  store i32 %170, i32* %6, align 4
  br label %171

171:                                              ; preds = %144, %134
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %7, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %7, align 4
  br label %128

175:                                              ; preds = %128
  br label %176

176:                                              ; preds = %175, %124
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
