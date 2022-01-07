; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik.c_kv_restore_regs_for_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik.c_kv_restore_regs_for_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.kv_reset_save_regs = type { i32, i32, i32 }

@mmGMCON_PGFSM_WRITE = common dso_local global i32 0, align 4
@mmGMCON_PGFSM_CONFIG = common dso_local global i32 0, align 4
@mmGMCON_MISC3 = common dso_local global i32 0, align 4
@mmGMCON_MISC = common dso_local global i32 0, align 4
@mmGMCON_RENG_EXECUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, %struct.kv_reset_save_regs*)* @kv_restore_regs_for_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kv_restore_regs_for_reset(%struct.amdgpu_device* %0, %struct.kv_reset_save_regs* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.kv_reset_save_regs*, align 8
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store %struct.kv_reset_save_regs* %1, %struct.kv_reset_save_regs** %4, align 8
  %6 = load i32, i32* @mmGMCON_PGFSM_WRITE, align 4
  %7 = call i32 @WREG32(i32 %6, i32 0)
  %8 = load i32, i32* @mmGMCON_PGFSM_CONFIG, align 4
  %9 = call i32 @WREG32(i32 %8, i32 536875263)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %16, %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 5
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load i32, i32* @mmGMCON_PGFSM_WRITE, align 4
  %15 = call i32 @WREG32(i32 %14, i32 0)
  br label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %5, align 4
  br label %10

19:                                               ; preds = %10
  %20 = load i32, i32* @mmGMCON_PGFSM_WRITE, align 4
  %21 = call i32 @WREG32(i32 %20, i32 0)
  %22 = load i32, i32* @mmGMCON_PGFSM_CONFIG, align 4
  %23 = call i32 @WREG32(i32 %22, i32 805310719)
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %30, %19
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 5
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i32, i32* @mmGMCON_PGFSM_WRITE, align 4
  %29 = call i32 @WREG32(i32 %28, i32 0)
  br label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %24

33:                                               ; preds = %24
  %34 = load i32, i32* @mmGMCON_PGFSM_WRITE, align 4
  %35 = call i32 @WREG32(i32 %34, i32 2162688)
  %36 = load i32, i32* @mmGMCON_PGFSM_CONFIG, align 4
  %37 = call i32 @WREG32(i32 %36, i32 -1610608385)
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %44, %33
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 5
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i32, i32* @mmGMCON_PGFSM_WRITE, align 4
  %43 = call i32 @WREG32(i32 %42, i32 0)
  br label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %38

47:                                               ; preds = %38
  %48 = load i32, i32* @mmGMCON_PGFSM_WRITE, align 4
  %49 = call i32 @WREG32(i32 %48, i32 135171)
  %50 = load i32, i32* @mmGMCON_PGFSM_CONFIG, align 4
  %51 = call i32 @WREG32(i32 %50, i32 -1342172929)
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %58, %47
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %53, 5
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i32, i32* @mmGMCON_PGFSM_WRITE, align 4
  %57 = call i32 @WREG32(i32 %56, i32 0)
  br label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %52

61:                                               ; preds = %52
  %62 = load i32, i32* @mmGMCON_PGFSM_WRITE, align 4
  %63 = call i32 @WREG32(i32 %62, i32 11008)
  %64 = load i32, i32* @mmGMCON_PGFSM_CONFIG, align 4
  %65 = call i32 @WREG32(i32 %64, i32 -1073737473)
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %72, %61
  %67 = load i32, i32* %5, align 4
  %68 = icmp slt i32 %67, 5
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load i32, i32* @mmGMCON_PGFSM_WRITE, align 4
  %71 = call i32 @WREG32(i32 %70, i32 0)
  br label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %66

75:                                               ; preds = %66
  %76 = load i32, i32* @mmGMCON_PGFSM_WRITE, align 4
  %77 = call i32 @WREG32(i32 %76, i32 0)
  %78 = load i32, i32* @mmGMCON_PGFSM_CONFIG, align 4
  %79 = call i32 @WREG32(i32 %78, i32 -805302017)
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %86, %75
  %81 = load i32, i32* %5, align 4
  %82 = icmp slt i32 %81, 5
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load i32, i32* @mmGMCON_PGFSM_WRITE, align 4
  %85 = call i32 @WREG32(i32 %84, i32 0)
  br label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %80

89:                                               ; preds = %80
  %90 = load i32, i32* @mmGMCON_PGFSM_WRITE, align 4
  %91 = call i32 @WREG32(i32 %90, i32 4325376)
  %92 = load i32, i32* @mmGMCON_PGFSM_CONFIG, align 4
  %93 = call i32 @WREG32(i32 %92, i32 268439807)
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %100, %89
  %95 = load i32, i32* %5, align 4
  %96 = icmp slt i32 %95, 5
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load i32, i32* @mmGMCON_PGFSM_WRITE, align 4
  %99 = call i32 @WREG32(i32 %98, i32 0)
  br label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %5, align 4
  br label %94

103:                                              ; preds = %94
  %104 = load i32, i32* @mmGMCON_PGFSM_WRITE, align 4
  %105 = call i32 @WREG32(i32 %104, i32 1180162)
  %106 = load i32, i32* @mmGMCON_PGFSM_CONFIG, align 4
  %107 = call i32 @WREG32(i32 %106, i32 1342181631)
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %114, %103
  %109 = load i32, i32* %5, align 4
  %110 = icmp slt i32 %109, 5
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  %112 = load i32, i32* @mmGMCON_PGFSM_WRITE, align 4
  %113 = call i32 @WREG32(i32 %112, i32 0)
  br label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %5, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %5, align 4
  br label %108

117:                                              ; preds = %108
  %118 = load i32, i32* @mmGMCON_PGFSM_WRITE, align 4
  %119 = call i32 @WREG32(i32 %118, i32 4079158)
  %120 = load i32, i32* @mmGMCON_PGFSM_CONFIG, align 4
  %121 = call i32 @WREG32(i32 %120, i32 1610617087)
  store i32 0, i32* %5, align 4
  br label %122

122:                                              ; preds = %128, %117
  %123 = load i32, i32* %5, align 4
  %124 = icmp slt i32 %123, 5
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = load i32, i32* @mmGMCON_PGFSM_WRITE, align 4
  %127 = call i32 @WREG32(i32 %126, i32 0)
  br label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %5, align 4
  br label %122

131:                                              ; preds = %122
  %132 = load i32, i32* @mmGMCON_PGFSM_WRITE, align 4
  %133 = call i32 @WREG32(i32 %132, i32 3620670)
  %134 = load i32, i32* @mmGMCON_PGFSM_CONFIG, align 4
  %135 = call i32 @WREG32(i32 %134, i32 1879052543)
  store i32 0, i32* %5, align 4
  br label %136

136:                                              ; preds = %142, %131
  %137 = load i32, i32* %5, align 4
  %138 = icmp slt i32 %137, 5
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = load i32, i32* @mmGMCON_PGFSM_WRITE, align 4
  %141 = call i32 @WREG32(i32 %140, i32 0)
  br label %142

142:                                              ; preds = %139
  %143 = load i32, i32* %5, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %5, align 4
  br label %136

145:                                              ; preds = %136
  %146 = load i32, i32* @mmGMCON_PGFSM_WRITE, align 4
  %147 = call i32 @WREG32(i32 %146, i32 4068146)
  %148 = load i32, i32* @mmGMCON_PGFSM_CONFIG, align 4
  %149 = call i32 @WREG32(i32 %148, i32 -536866561)
  %150 = load i32, i32* @mmGMCON_MISC3, align 4
  %151 = load %struct.kv_reset_save_regs*, %struct.kv_reset_save_regs** %4, align 8
  %152 = getelementptr inbounds %struct.kv_reset_save_regs, %struct.kv_reset_save_regs* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @WREG32(i32 %150, i32 %153)
  %155 = load i32, i32* @mmGMCON_MISC, align 4
  %156 = load %struct.kv_reset_save_regs*, %struct.kv_reset_save_regs** %4, align 8
  %157 = getelementptr inbounds %struct.kv_reset_save_regs, %struct.kv_reset_save_regs* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @WREG32(i32 %155, i32 %158)
  %160 = load i32, i32* @mmGMCON_RENG_EXECUTE, align 4
  %161 = load %struct.kv_reset_save_regs*, %struct.kv_reset_save_regs** %4, align 8
  %162 = getelementptr inbounds %struct.kv_reset_save_regs, %struct.kv_reset_save_regs* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @WREG32(i32 %160, i32 %163)
  ret void
}

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
