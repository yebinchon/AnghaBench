; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_main.c_ast_get_dram_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_main.c_ast_get_dram_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.ast_private*, %struct.TYPE_4__* }
%struct.ast_private = type { i32, i32, i64, i32, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"aspeed,mcr-configuration\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"aspeed,mcr-scu-mpll\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"aspeed,mcr-scu-strap\00", align 1
@AST_DRAM_1Gx16 = common dso_local global i8* null, align 8
@AST2500 = common dso_local global i64 0, align 8
@AST_DRAM_2Gx16 = common dso_local global i8* null, align 8
@AST_DRAM_4Gx16 = common dso_local global i8* null, align 8
@AST_DRAM_8Gx16 = common dso_local global i8* null, align 8
@AST2300 = common dso_local global i64 0, align 8
@AST2400 = common dso_local global i64 0, align 8
@AST_DRAM_512Mx16 = common dso_local global i8* null, align 8
@AST_DRAM_512Mx32 = common dso_local global i8* null, align 8
@AST_DRAM_1Gx32 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @ast_get_dram_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ast_get_dram_info(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.ast_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.device_node*, %struct.device_node** %18, align 8
  store %struct.device_node* %19, %struct.device_node** %4, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 0
  %22 = load %struct.ast_private*, %struct.ast_private** %21, align 8
  store %struct.ast_private* %22, %struct.ast_private** %5, align 8
  %23 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %24 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %54 [
    i32 129, label %26
    i32 128, label %42
    i32 130, label %53
  ]

26:                                               ; preds = %1
  %27 = load %struct.device_node*, %struct.device_node** %4, align 8
  %28 = call i32 @of_property_read_u32(%struct.device_node* %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32* %6)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 1399, i32* %6, align 4
  br label %31

31:                                               ; preds = %30, %26
  %32 = load %struct.device_node*, %struct.device_node** %4, align 8
  %33 = call i32 @of_property_read_u32(%struct.device_node* %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32* %7)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 20672, i32* %7, align 4
  br label %36

36:                                               ; preds = %35, %31
  %37 = load %struct.device_node*, %struct.device_node** %4, align 8
  %38 = call i32 @of_property_read_u32(%struct.device_node* %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32* %8)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %40, %36
  br label %72

42:                                               ; preds = %1
  %43 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %44 = call i32 @ast_write32(%struct.ast_private* %43, i32 61444, i32 510525440)
  %45 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %46 = call i32 @ast_write32(%struct.ast_private* %45, i32 61440, i32 1)
  %47 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %48 = call i32 @ast_read32(%struct.ast_private* %47, i32 65540)
  store i32 %48, i32* %6, align 4
  %49 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %50 = call i32 @ast_read32(%struct.ast_private* %49, i32 65824)
  store i32 %50, i32* %7, align 4
  %51 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %52 = call i32 @ast_read32(%struct.ast_private* %51, i32 65904)
  store i32 %52, i32* %8, align 4
  br label %72

53:                                               ; preds = %1
  br label %54

54:                                               ; preds = %1, %53
  %55 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %56 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %55, i32 0, i32 1
  store i32 16, i32* %56, align 4
  %57 = load i8*, i8** @AST_DRAM_1Gx16, align 8
  %58 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %59 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %58, i32 0, i32 4
  store i8* %57, i8** %59, align 8
  %60 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %61 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @AST2500, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %54
  %66 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %67 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %66, i32 0, i32 3
  store i32 800, i32* %67, align 8
  br label %71

68:                                               ; preds = %54
  %69 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %70 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %69, i32 0, i32 3
  store i32 396, i32* %70, align 8
  br label %71

71:                                               ; preds = %68, %65
  store i32 0, i32* %2, align 4
  br label %200

72:                                               ; preds = %42, %41
  %73 = load i32, i32* %6, align 4
  %74 = and i32 %73, 64
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %78 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %77, i32 0, i32 1
  store i32 16, i32* %78, align 4
  br label %82

79:                                               ; preds = %72
  %80 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %81 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %80, i32 0, i32 1
  store i32 32, i32* %81, align 4
  br label %82

82:                                               ; preds = %79, %76
  %83 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %84 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @AST2500, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %109

88:                                               ; preds = %82
  %89 = load i32, i32* %6, align 4
  %90 = and i32 %89, 3
  switch i32 %90, label %95 [
    i32 0, label %91
    i32 1, label %96
    i32 2, label %100
    i32 3, label %104
  ]

91:                                               ; preds = %88
  %92 = load i8*, i8** @AST_DRAM_1Gx16, align 8
  %93 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %94 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %93, i32 0, i32 4
  store i8* %92, i8** %94, align 8
  br label %108

95:                                               ; preds = %88
  br label %96

96:                                               ; preds = %88, %95
  %97 = load i8*, i8** @AST_DRAM_2Gx16, align 8
  %98 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %99 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %98, i32 0, i32 4
  store i8* %97, i8** %99, align 8
  br label %108

100:                                              ; preds = %88
  %101 = load i8*, i8** @AST_DRAM_4Gx16, align 8
  %102 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %103 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %102, i32 0, i32 4
  store i8* %101, i8** %103, align 8
  br label %108

104:                                              ; preds = %88
  %105 = load i8*, i8** @AST_DRAM_8Gx16, align 8
  %106 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %107 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %106, i32 0, i32 4
  store i8* %105, i8** %107, align 8
  br label %108

108:                                              ; preds = %104, %100, %96, %91
  br label %168

109:                                              ; preds = %82
  %110 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %111 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @AST2300, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %121, label %115

115:                                              ; preds = %109
  %116 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %117 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @AST2400, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %142

121:                                              ; preds = %115, %109
  %122 = load i32, i32* %6, align 4
  %123 = and i32 %122, 3
  switch i32 %123, label %128 [
    i32 0, label %124
    i32 1, label %129
    i32 2, label %133
    i32 3, label %137
  ]

124:                                              ; preds = %121
  %125 = load i8*, i8** @AST_DRAM_512Mx16, align 8
  %126 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %127 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %126, i32 0, i32 4
  store i8* %125, i8** %127, align 8
  br label %141

128:                                              ; preds = %121
  br label %129

129:                                              ; preds = %121, %128
  %130 = load i8*, i8** @AST_DRAM_1Gx16, align 8
  %131 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %132 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %131, i32 0, i32 4
  store i8* %130, i8** %132, align 8
  br label %141

133:                                              ; preds = %121
  %134 = load i8*, i8** @AST_DRAM_2Gx16, align 8
  %135 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %136 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %135, i32 0, i32 4
  store i8* %134, i8** %136, align 8
  br label %141

137:                                              ; preds = %121
  %138 = load i8*, i8** @AST_DRAM_4Gx16, align 8
  %139 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %140 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %139, i32 0, i32 4
  store i8* %138, i8** %140, align 8
  br label %141

141:                                              ; preds = %137, %133, %129, %124
  br label %167

142:                                              ; preds = %115
  %143 = load i32, i32* %6, align 4
  %144 = and i32 %143, 12
  switch i32 %144, label %166 [
    i32 0, label %145
    i32 4, label %145
    i32 8, label %149
    i32 12, label %162
  ]

145:                                              ; preds = %142, %142
  %146 = load i8*, i8** @AST_DRAM_512Mx16, align 8
  %147 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %148 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %147, i32 0, i32 4
  store i8* %146, i8** %148, align 8
  br label %166

149:                                              ; preds = %142
  %150 = load i32, i32* %6, align 4
  %151 = and i32 %150, 64
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = load i8*, i8** @AST_DRAM_1Gx16, align 8
  %155 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %156 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %155, i32 0, i32 4
  store i8* %154, i8** %156, align 8
  br label %161

157:                                              ; preds = %149
  %158 = load i8*, i8** @AST_DRAM_512Mx32, align 8
  %159 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %160 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %159, i32 0, i32 4
  store i8* %158, i8** %160, align 8
  br label %161

161:                                              ; preds = %157, %153
  br label %166

162:                                              ; preds = %142
  %163 = load i8*, i8** @AST_DRAM_1Gx32, align 8
  %164 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %165 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %164, i32 0, i32 4
  store i8* %163, i8** %165, align 8
  br label %166

166:                                              ; preds = %142, %162, %161, %145
  br label %167

167:                                              ; preds = %166, %141
  br label %168

168:                                              ; preds = %167, %108
  %169 = load i32, i32* %8, align 4
  %170 = and i32 %169, 8192
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %168
  store i32 14318, i32* %12, align 4
  br label %174

173:                                              ; preds = %168
  store i32 12000, i32* %12, align 4
  br label %174

174:                                              ; preds = %173, %172
  %175 = load i32, i32* %7, align 4
  %176 = and i32 %175, 31
  store i32 %176, i32* %9, align 4
  %177 = load i32, i32* %7, align 4
  %178 = and i32 %177, 16352
  %179 = ashr i32 %178, 5
  store i32 %179, i32* %10, align 4
  %180 = load i32, i32* %7, align 4
  %181 = and i32 %180, 49152
  %182 = ashr i32 %181, 14
  store i32 %182, i32* %13, align 4
  %183 = load i32, i32* %13, align 4
  switch i32 %183, label %186 [
    i32 3, label %184
    i32 2, label %185
    i32 1, label %185
  ]

184:                                              ; preds = %174
  store i32 4, i32* %11, align 4
  br label %187

185:                                              ; preds = %174, %174
  store i32 2, i32* %11, align 4
  br label %187

186:                                              ; preds = %174
  store i32 1, i32* %11, align 4
  br label %187

187:                                              ; preds = %186, %185, %184
  %188 = load i32, i32* %12, align 4
  %189 = load i32, i32* %10, align 4
  %190 = add nsw i32 %189, 2
  %191 = mul nsw i32 %188, %190
  %192 = load i32, i32* %9, align 4
  %193 = add nsw i32 %192, 2
  %194 = load i32, i32* %11, align 4
  %195 = mul nsw i32 %194, 1000
  %196 = mul nsw i32 %193, %195
  %197 = sdiv i32 %191, %196
  %198 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %199 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %198, i32 0, i32 3
  store i32 %197, i32* %199, align 8
  store i32 0, i32* %2, align 4
  br label %200

200:                                              ; preds = %187, %71
  %201 = load i32, i32* %2, align 4
  ret i32 %201
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @ast_write32(%struct.ast_private*, i32, i32) #1

declare dso_local i32 @ast_read32(%struct.ast_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
