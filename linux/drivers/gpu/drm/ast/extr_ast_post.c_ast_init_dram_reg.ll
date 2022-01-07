; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_ast_init_dram_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_ast_init_dram_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_dramstruct = type { i32, i32 }
%struct.drm_device = type { %struct.ast_private* }
%struct.ast_private = type { i32, i64 }

@AST_IO_CRTC_PORT = common dso_local global i32 0, align 4
@ast2000_dram_table_data = common dso_local global %struct.ast_dramstruct* null, align 8
@ast2100_dram_table_data = common dso_local global %struct.ast_dramstruct* null, align 8
@ast1100_dram_table_data = common dso_local global %struct.ast_dramstruct* null, align 8
@AST_DRAM_1Gx16 = common dso_local global i64 0, align 8
@AST_DRAM_1Gx32 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @ast_init_dram_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ast_init_dram_reg(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.ast_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ast_dramstruct*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.ast_private*, %struct.ast_private** %10, align 8
  store %struct.ast_private* %11, %struct.ast_private** %3, align 8
  %12 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %13 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %14 = call i32 @ast_get_index_reg_mask(%struct.ast_private* %12, i32 %13, i32 208, i32 255)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 128
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %198

18:                                               ; preds = %1
  %19 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %20 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 131
  br i1 %22, label %23, label %37

23:                                               ; preds = %18
  %24 = load %struct.ast_dramstruct*, %struct.ast_dramstruct** @ast2000_dram_table_data, align 8
  store %struct.ast_dramstruct* %24, %struct.ast_dramstruct** %8, align 8
  %25 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %26 = call i32 @ast_write32(%struct.ast_private* %25, i32 61444, i32 510525440)
  %27 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %28 = call i32 @ast_write32(%struct.ast_private* %27, i32 61440, i32 1)
  %29 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %30 = call i32 @ast_write32(%struct.ast_private* %29, i32 65792, i32 168)
  br label %31

31:                                               ; preds = %32, %23
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %34 = call i32 @ast_read32(%struct.ast_private* %33, i32 65792)
  %35 = icmp ne i32 %34, 168
  br i1 %35, label %31, label %36

36:                                               ; preds = %32
  br label %72

37:                                               ; preds = %18
  %38 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %39 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 130
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %44 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 2200
  br i1 %46, label %47, label %49

47:                                               ; preds = %42, %37
  %48 = load %struct.ast_dramstruct*, %struct.ast_dramstruct** @ast2100_dram_table_data, align 8
  store %struct.ast_dramstruct* %48, %struct.ast_dramstruct** %8, align 8
  br label %51

49:                                               ; preds = %42
  %50 = load %struct.ast_dramstruct*, %struct.ast_dramstruct** @ast1100_dram_table_data, align 8
  store %struct.ast_dramstruct* %50, %struct.ast_dramstruct** %8, align 8
  br label %51

51:                                               ; preds = %49, %47
  %52 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %53 = call i32 @ast_write32(%struct.ast_private* %52, i32 61444, i32 510525440)
  %54 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %55 = call i32 @ast_write32(%struct.ast_private* %54, i32 61440, i32 1)
  %56 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %57 = call i32 @ast_write32(%struct.ast_private* %56, i32 73728, i32 378054824)
  br label %58

58:                                               ; preds = %59, %51
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %61 = call i32 @ast_read32(%struct.ast_private* %60, i32 73728)
  %62 = icmp ne i32 %61, 1
  br i1 %62, label %58, label %63

63:                                               ; preds = %59
  %64 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %65 = call i32 @ast_write32(%struct.ast_private* %64, i32 65536, i32 -60816631)
  br label %66

66:                                               ; preds = %67, %63
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %69 = call i32 @ast_read32(%struct.ast_private* %68, i32 65536)
  %70 = icmp ne i32 %69, 1
  br i1 %70, label %66, label %71

71:                                               ; preds = %67
  br label %72

72:                                               ; preds = %71, %36
  br label %73

73:                                               ; preds = %151, %72
  %74 = load %struct.ast_dramstruct*, %struct.ast_dramstruct** %8, align 8
  %75 = getelementptr inbounds %struct.ast_dramstruct, %struct.ast_dramstruct* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 65535
  br i1 %77, label %78, label %154

78:                                               ; preds = %73
  %79 = load %struct.ast_dramstruct*, %struct.ast_dramstruct** %8, align 8
  %80 = getelementptr inbounds %struct.ast_dramstruct, %struct.ast_dramstruct* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 65280
  br i1 %82, label %83, label %96

83:                                               ; preds = %78
  store i32 0, i32* %7, align 4
  br label %84

84:                                               ; preds = %92, %83
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %85, 15
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = load %struct.ast_dramstruct*, %struct.ast_dramstruct** %8, align 8
  %89 = getelementptr inbounds %struct.ast_dramstruct, %struct.ast_dramstruct* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @udelay(i32 %90)
  br label %92

92:                                               ; preds = %87
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %84

95:                                               ; preds = %84
  br label %151

96:                                               ; preds = %78
  %97 = load %struct.ast_dramstruct*, %struct.ast_dramstruct** %8, align 8
  %98 = getelementptr inbounds %struct.ast_dramstruct, %struct.ast_dramstruct* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 4
  br i1 %100, label %101, label %140

101:                                              ; preds = %96
  %102 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %103 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 131
  br i1 %105, label %106, label %140

106:                                              ; preds = %101
  %107 = load %struct.ast_dramstruct*, %struct.ast_dramstruct** %8, align 8
  %108 = getelementptr inbounds %struct.ast_dramstruct, %struct.ast_dramstruct* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %5, align 4
  %110 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %111 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @AST_DRAM_1Gx16, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %106
  store i32 3465, i32* %5, align 4
  br label %124

116:                                              ; preds = %106
  %117 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %118 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @AST_DRAM_1Gx32, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  store i32 3213, i32* %5, align 4
  br label %123

123:                                              ; preds = %122, %116
  br label %124

124:                                              ; preds = %123, %115
  %125 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %126 = call i32 @ast_read32(%struct.ast_private* %125, i32 73840)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = and i32 %127, 12
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = shl i32 %129, 2
  store i32 %130, i32* %6, align 4
  %131 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %132 = load %struct.ast_dramstruct*, %struct.ast_dramstruct** %8, align 8
  %133 = getelementptr inbounds %struct.ast_dramstruct, %struct.ast_dramstruct* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 65536, %134
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* %6, align 4
  %138 = or i32 %136, %137
  %139 = call i32 @ast_write32(%struct.ast_private* %131, i32 %135, i32 %138)
  br label %150

140:                                              ; preds = %101, %96
  %141 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %142 = load %struct.ast_dramstruct*, %struct.ast_dramstruct** %8, align 8
  %143 = getelementptr inbounds %struct.ast_dramstruct, %struct.ast_dramstruct* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 65536, %144
  %146 = load %struct.ast_dramstruct*, %struct.ast_dramstruct** %8, align 8
  %147 = getelementptr inbounds %struct.ast_dramstruct, %struct.ast_dramstruct* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @ast_write32(%struct.ast_private* %141, i32 %145, i32 %148)
  br label %150

150:                                              ; preds = %140, %124
  br label %151

151:                                              ; preds = %150, %95
  %152 = load %struct.ast_dramstruct*, %struct.ast_dramstruct** %8, align 8
  %153 = getelementptr inbounds %struct.ast_dramstruct, %struct.ast_dramstruct* %152, i32 1
  store %struct.ast_dramstruct* %153, %struct.ast_dramstruct** %8, align 8
  br label %73

154:                                              ; preds = %73
  %155 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %156 = call i32 @ast_read32(%struct.ast_private* %155, i32 65824)
  store i32 %156, i32* %5, align 4
  %157 = load i32, i32* %5, align 4
  %158 = icmp eq i32 %157, 20577
  br i1 %158, label %159, label %172

159:                                              ; preds = %154
  %160 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %161 = call i32 @ast_read32(%struct.ast_private* %160, i32 65540)
  store i32 %161, i32* %5, align 4
  %162 = load i32, i32* %5, align 4
  %163 = and i32 %162, 64
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %159
  %166 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %167 = call i32 @cbrdlli_ast2150(%struct.ast_private* %166, i32 16)
  br label %171

168:                                              ; preds = %159
  %169 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %170 = call i32 @cbrdlli_ast2150(%struct.ast_private* %169, i32 32)
  br label %171

171:                                              ; preds = %168, %165
  br label %172

172:                                              ; preds = %171, %154
  %173 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %174 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  switch i32 %175, label %196 [
    i32 131, label %176
    i32 132, label %183
    i32 130, label %183
    i32 128, label %183
    i32 129, label %183
  ]

176:                                              ; preds = %172
  %177 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %178 = call i32 @ast_read32(%struct.ast_private* %177, i32 65856)
  store i32 %178, i32* %6, align 4
  %179 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %180 = load i32, i32* %6, align 4
  %181 = or i32 %180, 64
  %182 = call i32 @ast_write32(%struct.ast_private* %179, i32 65856, i32 %181)
  br label %197

183:                                              ; preds = %172, %172, %172, %172
  %184 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %185 = call i32 @ast_read32(%struct.ast_private* %184, i32 73740)
  store i32 %185, i32* %6, align 4
  %186 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %187 = load i32, i32* %6, align 4
  %188 = and i32 %187, -3
  %189 = call i32 @ast_write32(%struct.ast_private* %186, i32 73740, i32 %188)
  %190 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %191 = call i32 @ast_read32(%struct.ast_private* %190, i32 73792)
  store i32 %191, i32* %6, align 4
  %192 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %193 = load i32, i32* %6, align 4
  %194 = or i32 %193, 64
  %195 = call i32 @ast_write32(%struct.ast_private* %192, i32 73792, i32 %194)
  br label %197

196:                                              ; preds = %172
  br label %197

197:                                              ; preds = %196, %183, %176
  br label %198

198:                                              ; preds = %197, %1
  br label %199

199:                                              ; preds = %203, %198
  %200 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %201 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %202 = call i32 @ast_get_index_reg_mask(%struct.ast_private* %200, i32 %201, i32 208, i32 255)
  store i32 %202, i32* %4, align 4
  br label %203

203:                                              ; preds = %199
  %204 = load i32, i32* %4, align 4
  %205 = and i32 %204, 64
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %199, label %207

207:                                              ; preds = %203
  ret void
}

declare dso_local i32 @ast_get_index_reg_mask(%struct.ast_private*, i32, i32, i32) #1

declare dso_local i32 @ast_write32(%struct.ast_private*, i32, i32) #1

declare dso_local i32 @ast_read32(%struct.ast_private*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @cbrdlli_ast2150(%struct.ast_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
