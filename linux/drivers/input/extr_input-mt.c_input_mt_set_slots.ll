; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_input-mt.c_input_mt_set_slots.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_input-mt.c_input_mt_set_slots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_mt = type { i32*, i32, %struct.input_mt_slot* }
%struct.input_mt_slot = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_mt*, i32*, i32)* @input_mt_set_slots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @input_mt_set_slots(%struct.input_mt* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.input_mt*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.input_mt_slot*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.input_mt* %0, %struct.input_mt** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.input_mt*, %struct.input_mt** %4, align 8
  %11 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %22, %3
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32 -1, i32* %21, align 4
  br label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %9, align 4
  br label %13

25:                                               ; preds = %13
  %26 = load %struct.input_mt*, %struct.input_mt** %4, align 8
  %27 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %26, i32 0, i32 2
  %28 = load %struct.input_mt_slot*, %struct.input_mt_slot** %27, align 8
  store %struct.input_mt_slot* %28, %struct.input_mt_slot** %7, align 8
  br label %29

29:                                               ; preds = %80, %25
  %30 = load %struct.input_mt_slot*, %struct.input_mt_slot** %7, align 8
  %31 = load %struct.input_mt*, %struct.input_mt** %4, align 8
  %32 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %31, i32 0, i32 2
  %33 = load %struct.input_mt_slot*, %struct.input_mt_slot** %32, align 8
  %34 = load %struct.input_mt*, %struct.input_mt** %4, align 8
  %35 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.input_mt_slot, %struct.input_mt_slot* %33, i64 %37
  %39 = icmp ne %struct.input_mt_slot* %30, %38
  br i1 %39, label %40, label %83

40:                                               ; preds = %29
  %41 = load %struct.input_mt_slot*, %struct.input_mt_slot** %7, align 8
  %42 = call i64 @input_mt_is_active(%struct.input_mt_slot* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  br label %80

45:                                               ; preds = %40
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %72, %45
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %75

50:                                               ; preds = %46
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %50
  %58 = load %struct.input_mt_slot*, %struct.input_mt_slot** %7, align 8
  %59 = load %struct.input_mt*, %struct.input_mt** %4, align 8
  %60 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %59, i32 0, i32 2
  %61 = load %struct.input_mt_slot*, %struct.input_mt_slot** %60, align 8
  %62 = ptrtoint %struct.input_mt_slot* %58 to i64
  %63 = ptrtoint %struct.input_mt_slot* %61 to i64
  %64 = sub i64 %62, %63
  %65 = sdiv exact i64 %64, 4
  %66 = trunc i64 %65 to i32
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %66, i32* %70, align 4
  br label %75

71:                                               ; preds = %50
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %46

75:                                               ; preds = %57, %46
  %76 = load i32, i32* %6, align 4
  %77 = load i32*, i32** %8, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32* %79, i32** %8, align 8
  br label %80

80:                                               ; preds = %75, %44
  %81 = load %struct.input_mt_slot*, %struct.input_mt_slot** %7, align 8
  %82 = getelementptr inbounds %struct.input_mt_slot, %struct.input_mt_slot* %81, i32 1
  store %struct.input_mt_slot* %82, %struct.input_mt_slot** %7, align 8
  br label %29

83:                                               ; preds = %29
  %84 = load %struct.input_mt*, %struct.input_mt** %4, align 8
  %85 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %84, i32 0, i32 2
  %86 = load %struct.input_mt_slot*, %struct.input_mt_slot** %85, align 8
  store %struct.input_mt_slot* %86, %struct.input_mt_slot** %7, align 8
  br label %87

87:                                               ; preds = %134, %83
  %88 = load %struct.input_mt_slot*, %struct.input_mt_slot** %7, align 8
  %89 = load %struct.input_mt*, %struct.input_mt** %4, align 8
  %90 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %89, i32 0, i32 2
  %91 = load %struct.input_mt_slot*, %struct.input_mt_slot** %90, align 8
  %92 = load %struct.input_mt*, %struct.input_mt** %4, align 8
  %93 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.input_mt_slot, %struct.input_mt_slot* %91, i64 %95
  %97 = icmp ne %struct.input_mt_slot* %88, %96
  br i1 %97, label %98, label %137

98:                                               ; preds = %87
  %99 = load %struct.input_mt_slot*, %struct.input_mt_slot** %7, align 8
  %100 = call i64 @input_mt_is_active(%struct.input_mt_slot* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  br label %134

103:                                              ; preds = %98
  store i32 0, i32* %9, align 4
  br label %104

104:                                              ; preds = %130, %103
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %133

108:                                              ; preds = %104
  %109 = load i32*, i32** %5, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %108
  %116 = load %struct.input_mt_slot*, %struct.input_mt_slot** %7, align 8
  %117 = load %struct.input_mt*, %struct.input_mt** %4, align 8
  %118 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %117, i32 0, i32 2
  %119 = load %struct.input_mt_slot*, %struct.input_mt_slot** %118, align 8
  %120 = ptrtoint %struct.input_mt_slot* %116 to i64
  %121 = ptrtoint %struct.input_mt_slot* %119 to i64
  %122 = sub i64 %120, %121
  %123 = sdiv exact i64 %122, 4
  %124 = trunc i64 %123 to i32
  %125 = load i32*, i32** %5, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  store i32 %124, i32* %128, align 4
  br label %133

129:                                              ; preds = %108
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %9, align 4
  br label %104

133:                                              ; preds = %115, %104
  br label %134

134:                                              ; preds = %133, %102
  %135 = load %struct.input_mt_slot*, %struct.input_mt_slot** %7, align 8
  %136 = getelementptr inbounds %struct.input_mt_slot, %struct.input_mt_slot* %135, i32 1
  store %struct.input_mt_slot* %136, %struct.input_mt_slot** %7, align 8
  br label %87

137:                                              ; preds = %87
  ret void
}

declare dso_local i64 @input_mt_is_active(%struct.input_mt_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
